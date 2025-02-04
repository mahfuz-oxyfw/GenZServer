local QBCore = exports['qb-core']:GetCoreObject()
local heistStarted = false
local hackSuccessful = false
local carrierBlip = nil -- For the carrier marker
local lootBoxes = {} -- List to track the statuses of lootboxes

-- Load the model for the NPC
function loadModel(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(10)
    end
end

-- Create the NPC for the heist
Citizen.CreateThread(function()
    local npcModel = GetHashKey(Config.NPC.model)
    loadModel(npcModel)

    -- Create the NPC
    local npcPed = CreatePed(4, npcModel, Config.NPC.coords.x, Config.NPC.coords.y, Config.NPC.coords.z - 1.0, Config.NPC.heading, false, true)
    FreezeEntityPosition(npcPed, true)
    SetEntityInvincible(npcPed, true)
    SetBlockingOfNonTemporaryEvents(npcPed, true)

    -- Use qb-target to interact with the NPC
    exports['qb-target']:AddTargetEntity(npcPed, {
        options = {
            {
                label = Config.InteractText,
                icon = "fas fa-user",
                action = function()
                    startHeist() -- Start the heist
                end
            },
        },
        distance = 2.5
    })
end)

-- Function to start the heist
function startHeist()
    local player = PlayerPedId()
    local hasPistol = QBCore.Functions.HasItem("weapon_combatpistol") --this for needed to start the heist

    if heistStarted then
        QBCore.Functions.Notify(Config.Notifications.AlreadyStarted, "error")
        return
    end

    if not hasPistol then
        QBCore.Functions.Notify("You don't have the required item to start the heist!", "error")
        return
    end

    -- Remove the weapon from inventory
    TriggerServerEvent("qb-heist:removeItem", "weapon_combatpistol")

    heistStarted = true
    QBCore.Functions.Notify(Config.Notifications.StartHeist, "success")

    -- Trigger the dispatch alert
    exports['ps-dispatch']:AircraftCarrierHeistAlert()

    -- Add the laptop for hacking
    addLaptopHack()
end

-- Helper function to remove the laptop blip
function removeLaptopBlip()
    if carrierBlip ~= nil then
        RemoveBlip(carrierBlip)
        carrierBlip = nil
    end
end

-- Function to start the laptop hacking process
function startLaptopHack()
    -- Trigger the hacking mini-game (replace with actual hacking logic)
    TriggerEvent("hacking:minigame", function(success)
        if success then
            QBCore.Functions.Notify("Hack successful!", "success")
            hackSuccessful = true

            -- Remove the blip after hacking
            removeLaptopBlip()

            -- Continue to the next heist phase (e.g., enabling loot boxes or other objectives)
            enableLootBoxes()
        else
            QBCore.Functions.Notify("Hack failed! Try again.", "error")
        end
    end)
end

-- Function to add the laptop for hacking
function addLaptopHack()
    -- Add a blip for the laptop
    carrierBlip = AddBlipForCoord(Config.Laptop.coords)
    SetBlipSprite(carrierBlip, 521) -- Example blip sprite (change as needed)
    SetBlipDisplay(carrierBlip, 4)
    SetBlipScale(carrierBlip, 0.8)
    SetBlipColour(carrierBlip, 1) -- Example color (change as needed)
    SetBlipAsShortRange(carrierBlip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Heist Laptop")
    EndTextCommandSetBlipName(carrierBlip)

    -- Add interaction zone
    exports['qb-target']:AddBoxZone("heist_laptop", Config.Laptop.coords, 2.5, 1.5, {
        name = "heist_laptop",
        heading = Config.Laptop.heading,
        debugPoly = false,
        minZ = 15.57,
        maxZ = 19.57,
    }, {
        options = {
            {
                label = Config.Laptop.interactText,
                icon = "fas fa-laptop",
                action = function()
                    if not heistStarted then
                        QBCore.Functions.Notify("The heist is not started!", "error")
                        return
                    end
                    startLaptopHack() -- Start the mini-game for hacking
                end
            },
        },
        distance = 2.5
    })
end


-- Function to spawn guards after successful hacking
function spawnSoldiers()
    local playerPed = PlayerPedId()

    for _, soldier in ipairs(Config.Soldiers) do
        local soldierModel = GetHashKey(soldier.model)
        loadModel(soldierModel)

        -- Create the guard at the specified coordinates with vector3
        local soldierPed = CreatePed(5, soldierModel, soldier.coords.x, soldier.coords.y, soldier.coords.z, soldier.heading, true, true)

        -- Give the weapon to the guard
        GiveWeaponToPed(soldierPed, GetHashKey(soldier.weapon), 999, true, true)

        -- Set the guard's task to shoot the player
        TaskCombatPed(soldierPed, playerPed, 0, 16)
        SetEntityAsMissionEntity(soldierPed, true, true)
    end
end

-- Function to start hacking with ps-ui
function startLaptopHack()
    local hasHackLaptop = QBCore.Functions.HasItem("hacklaptop")
    local hasHackKit = QBCore.Functions.HasItem("hackkit")

    -- Check for the necessary items
    if not hasHackLaptop or not hasHackKit then
        QBCore.Functions.Notify("You don't have the necessary items for hacking!", "error")
        return
    end

    -- Remove the items upon starting the hacking
    exports['ps-ui']:VarHack(function(success)
        if success then
            hackSuccessful = true
            QBCore.Functions.Notify(Config.Notifications.HackSuccess, "success")
            markCarrierLocation() -- Add a marker for the carrier's location
            spawnSoldiers() -- Spawn the guards after successful hacking
        else
            -- If the hack fails, remove the items
            QBCore.Functions.Notify(Config.Notifications.HackFailed, "error")
            TriggerServerEvent("qb-heist:removeItem", "hacklaptop")
            TriggerServerEvent("qb-heist:removeItem", "hackkit")
            hackSuccessful = false
        end
    end, Config.HackSettings.numBlocks, Config.HackSettings.time)
end

-- Function to mark the location of the carrier
function markCarrierLocation()
    if carrierBlip then
        RemoveBlip(carrierBlip) -- If there is already a marker, remove it
    end

    -- Create a new marker on the map
    carrierBlip = AddBlipForCoord(Config.Carrier.coords.x, Config.Carrier.coords.y, Config.Carrier.coords.z)
    SetBlipSprite(carrierBlip, Config.Carrier.blip.sprite)
    SetBlipDisplay(carrierBlip, 4)
    SetBlipScale(carrierBlip, Config.Carrier.blip.scale)
    SetBlipColour(carrierBlip, Config.Carrier.blip.color)
    SetBlipAsShortRange(carrierBlip, false)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Aircraft Carrier")
    EndTextCommandSetBlipName(carrierBlip)

    -- Add GPS to the carrier's location
    SetNewWaypoint(Config.Carrier.coords.x, Config.Carrier.coords.y)
end

-- Function to add lootboxes for interaction
function addLootBoxes()
    for index, lootBox in ipairs(Config.LootBoxes) do
        exports['qb-target']:AddBoxZone("lootbox_" .. index, lootBox.coords, 1.5, 1.5, {
            name = "lootbox_" .. index,
            heading = 0,
            debugPoly = false,
            minZ = lootBox.coords.z - 1.0,
            maxZ = lootBox.coords.z + 1.0,
        }, {
            options = {
                {
                    label = lootBox.interactText,
                    icon = "fas fa-gift",
                    action = function()
                        openLootBox(lootBox, index) -- Open the lootbox
                    end
                },
            },
            distance = 2.5
        })
        lootBoxes[index] = {opened = false} -- Initialize the lootbox with "opened" status
    end
end

-- Function for looting with animation
local function lootWithAnimation(onFinish)
    local playerPed = PlayerPedId()
    local animDict = Config.LootAnimation.dict
    local animName = Config.LootAnimation.name

    -- Load the animation
    RequestAnimDict(animDict)
    while not HasAnimDictLoaded(animDict) do
        Wait(100)
    end

    -- Execute the animation
    TaskPlayAnim(playerPed, animDict, animName, 8.0, -8.0, Config.LootAnimation.duration, 49, 0, false, false, false)

    -- Wait for the animation to finish
    Wait(Config.LootAnimation.duration)

    -- Stop the animation
    ClearPedTasks(playerPed)

    -- Execute the function to add items after the animation is finished
    if onFinish then
        onFinish()
    end
end

-- Function to open a lootbox
function openLootBox(lootBox, index)
    local playerPed = PlayerPedId()
    local hasCrowbar = QBCore.Functions.HasItem("weapon_crowbar")

    -- Check for the presence of the weapon
    if not hasCrowbar then
        QBCore.Functions.Notify("You don't have the necessary item to break open the box", "error")
        return
    end

    -- Check if the lootbox has already been looted
    if lootBoxes[index].opened then
        QBCore.Functions.Notify("This box has already been looted!", "error")
        return
    end

    QBCore.Functions.Notify("You are looting...", "info")

    -- Call the function with animation
    lootWithAnimation(function()
        -- Select a random reward from Config.LootItems
        local randomItem = Config.LootItems[math.random(1, #Config.LootItems)]
        local itemName = randomItem.name
        local itemAmount = randomItem.amount

        -- Add the reward to the player
        if itemName == "money" then
            TriggerServerEvent("qb-heist:addMoney", itemAmount)
        else
            TriggerServerEvent("qb-heist:addItem", itemName, itemAmount)
        end

        -- Mark that the lootbox has been looted
        lootBoxes[index].opened = true
        QBCore.Functions.Notify("You found " .. itemAmount .. " " .. itemName, "success")
    end)
end

-- Adding the lootboxes in the main thread
Citizen.CreateThread(function()
    addLootBoxes() -- Adding the lootboxes
end)

-- Function to add the laptop for hacking the aircraft carrier
function addCarrierLaptopHack()
    exports['qb-target']:AddBoxZone("carrier_laptop", Config.CarrierLaptop.coords, 0.9, 2, {
        name = "carrier_laptop",
        heading = Config.CarrierLaptop.heading,
        debugPoly = false,
        minZ = 24.05, -- Minimum Z coordinate
        maxZ = 28.05, -- Maximum Z coordinate
    }, {
        options = {
            {
                label = Config.CarrierLaptop.interactText,
                icon = "fas fa-laptop",
                action = function()
                    if not heistStarted then
                        QBCore.Functions.Notify("The heist is not started!", "error")
                        return
                    end
                    startCarrierHack() -- Starting the hack
                end
            },
        },
        distance = 2.5
    })
end

-- Function to start hacking the aircraft carrier laptop
function startCarrierHack()
    local hasHackingTool = QBCore.Functions.HasItem("hackingtool")

    if not hasHackingTool then
        QBCore.Functions.Notify("You don't have the required item for hacking!", "error")
        return
    end

    -- Remove "hackingtool" from the inventory
    TriggerServerEvent("qb-heist:removeItem", "hackingtool")

    exports['ps-ui']:Thermite(function(success)
        if success then
            QBCore.Functions.Notify(Config.Notifications.HackSuccess2, "success")
            -- Add "datadrive" to the player after a successful hack
            TriggerServerEvent("qb-heist:addItem", "datadrive", 1)
            -- Here you can add code to finish the heist
        else
            QBCore.Functions.Notify(Config.Notifications.HackFailed, "error")
            -- Return "hackingtool" back to the player on failed hack
            TriggerServerEvent("qb-heist:addItem", "hackingtool", 1)
        end
    end, Config.HackSettings2.time, Config.HackSettings2.gridSize, Config.HackSettings2.incorrectBlocks)
end

-- Adding the aircraft carrier laptop in the main thread
Citizen.CreateThread(function()
    addCarrierLaptopHack() -- Adding the aircraft carrier laptop
end)
