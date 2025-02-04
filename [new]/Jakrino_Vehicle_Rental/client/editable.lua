looking = false

CreateThread(function()
    for index, rentalData in pairs(Config.VehicleRentals) do
        local npcSettings = rentalData.npcSettings
        RequestModel(npcSettings.model)
        while not HasModelLoaded(npcSettings.model) do
            Wait(100)
        end
        local npc = CreatePed(1, npcSettings.model, npcSettings.coords, false, false)
        SetPedCombatAttributes(npc, 46, true)
        SetPedFleeAttributes(npc, 0, 0)
        SetBlockingOfNonTemporaryEvents(npc, true)
        SetEntityAsMissionEntity(npc, true, true)
        SetEntityInvincible(npc, true)
        FreezeEntityPosition(npc, true)

        local blipSettings = rentalData.blipSettings
        local blip = AddBlipForCoord(npcSettings.coords.x, npcSettings.coords.y, npcSettings.coords.z)
        SetBlipSprite(blip, blipSettings.id)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipSettings.scale)
        SetBlipColour(blip, blipSettings.colour)
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipSettings.displayName)
        EndTextCommandSetBlipName(blip)
    end
end)

if Config.InteractType["drawtext"].useThis then
    local function drawText3D(x, y, z, text)
        local onScreen,_x,_y=World3dToScreen2d(x,y,z)
        local px,py,pz=table.unpack(GetGameplayCamCoords())
        SetTextScale(0.35, 0.35)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
        local factor = (string.len(text)) / 370
        DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
    end

    local function GetNearest(playerCoords)
        local currentIndex, currentDistance = 0, 100000
        for xIndex, xCoords in pairs(Config.VehicleRentals) do
            local distance = #(playerCoords - vector3(xCoords.npcSettings.coords.x, xCoords.npcSettings.coords.y, xCoords.npcSettings.coords.z))
            if currentDistance > distance then
                currentDistance = distance
                currentIndex = xIndex
            end
        end
        return currentIndex, currentDistance
    end
    
    CreateThread(function()
        local sleep = 1000
        while true do
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local index, distance = GetNearest(coords)
            if distance < 2 then
                sleep = 0
                if not looking then
                    drawText3D(Config.VehicleRentals[index].npcSettings.coords.x, Config.VehicleRentals[index].npcSettings.coords.y, Config.VehicleRentals[index].npcSettings.coords.z + 2, '~g~[E]~w~ '..Locales[Config.Locales]["Vehicle-Rental"])
                    if IsControlJustPressed(0, 38) then
                        TriggerEvent('Jakrino:Client:OpenRentalMenu', false, index)
                    end
                end
            else
                sleep = 1000
            end
            Wait(sleep)
        end
    end)
elseif Config.InteractType["textui"].useThis then
    local function GetNearest(playerCoords)
        local currentIndex, currentDistance = 0, 100000
        for xIndex, xCoords in pairs(Config.VehicleRentals) do
            local distance = #(playerCoords - vector3(xCoords.npcSettings.coords.x, xCoords.npcSettings.coords.y, xCoords.npcSettings.coords.z))
            if currentDistance > distance then
                currentDistance = distance
                currentIndex = xIndex
            end
        end
        return currentIndex, currentDistance
    end

    CreateThread(function()
        local showed = false
        local sleep = 1000

        while true do
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local index, distance = GetNearest(coords)
            if distance < 2 then
                sleep = 0
                if not looking then
                    if not showed then
                        showed = true
                        exports['qb-core']:DrawText('[E] '..Locales[Config.Locales]["Vehicle-Rental"])
                    end
                    if IsControlJustPressed(0, 38) then
                        exports['qb-core']:KeyPressed()
                        Wait(100)
                        exports['qb-core']:HideText()
                        TriggerEvent('Jakrino:Client:OpenRentalMenu', false, index)
                        showed = false
                    end
                end
            else
                if showed then
                    showed = false
                    exports['qb-core']:HideText()
                end
                sleep = 1000
            end
            Wait(sleep)
        end
    end)
elseif Config.InteractType["target"].useThis then
    for index, rentalData in pairs(Config.VehicleRentals) do
        local npcSettings = rentalData.npcSettings
        exports["qb-target"]:AddBoxZone("Vehicle_Rental_" .. index, vector3(npcSettings.coords.x, npcSettings.coords.y, npcSettings.coords.z), 1.25, 1.25, {
            name = "Vehicle_Rental_"..index,
            heading = npcSettings.coords.w,
            debugPoly = false,
            minZ = npcSettings.coords.z - 1,
            maxZ = npcSettings.coords.z + 2,
        }, {
            options = {
                {
                    type = "client",
                    event = "Jakrino:Client:OpenRentalMenu",
                    label = Locales[Config.Locales]["Vehicle-Rental"],
                    index = index,
                }
            },
            distance = 2.0
        })
    end
end