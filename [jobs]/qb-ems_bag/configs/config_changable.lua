local QBCore = exports['qb-core']:GetCoreObject()


-- Simple Event's , you can create yours and put on qb-menu :)

RegisterNetEvent('qb-EmsBag:Client:GiveRadio')
AddEventHandler("qb-EmsBag:Client:GiveRadio", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking a Radio ...")
    TriggerServerEvent("qb-EmsBag:Server:AddItem", "radio", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["radio"], "add", 1)
end)

RegisterNetEvent('qb-EmsBag:Client:Givebandage')
AddEventHandler("qb-EmsBag:Client:Givebandage", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Bandage ...")
    TriggerServerEvent("qb-EmsBag:Server:AddItem", "bandage", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "add", 1)
end)
RegisterNetEvent('qb-EmsBag:Client:Givepainkillers')
AddEventHandler("qb-EmsBag:Client:Givepainkillers", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Painkillers ...")
    TriggerServerEvent("qb-EmsBag:Server:AddItem", "painkillers", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["painkillers"], "add", 1)
end)
RegisterNetEvent('qb-EmsBag:Client:Givefirstaid')
AddEventHandler("qb-EmsBag:Client:Givefirstaid", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Firstaid ...")
    TriggerServerEvent("qb-EmsBag:Server:AddItem", "firstaid", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["firstaid"], "add", 1)
end)
RegisterNetEvent('qb-EmsBag:Client:Giveweapon_flashlight')
AddEventHandler("qb-EmsBag:Client:Giveweapon_flashlight", function()
    local playerPed = PlayerPedId()
    TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
    progressBar("Taking Flashlight ...")
    TriggerServerEvent("qb-EmsBag:Server:AddItem", "weapon_flashlight", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["weapon_flashlight"], "add", 1)
end)


RegisterNetEvent('qb-EmsBag:Client:MenuAmbulanceBag', function()
    local playerPed = PlayerPedId()
    if IsEntityDead(playerPed) then return Notify("You cannot Open Bag while dead", "error") end
    if IsPedSwimming(playerPed) then return Notify("You cannot Open Bag in the water.", "error") end
    if IsPedSittingInAnyVehicle(playerPed) then return Notify("You cannot Open Bag inside a vehicle", "error") end
    exports['qb-menu']:openMenu({
        { header = "[🚑] Ambulance Box", txt = "", isMenuHeader = true },
        { header = "[👜] Open AmbulanceBag",  params = { event = "qb-EmsBag:Client:StorageAmbulanceBag" } },
        { header = "[🩹]Take Bandage ",  params = { event = "qb-EmsBag:Client:Givebandage" } },
        { header = "[💊] Take Painkillers ",  params = { event = "qb-EmsBag:Client:Givepainkillers" } },
        { header = "[💉] Take Firstaid ",  params = { event = "qb-EmsBag:Client:Givefirstaid" } },
        { header = "[🔦] Take FlashLight ",  params = { event = "qb-EmsBag:Client:Giveweapon_flashlight" } },
        { header = "[📻] Take Radio",  params = { event = "qb-EmsBag:Client:GiveRadio" } },
        -- You can add more menus with your's personal events...
        { header = "", txt = "❌ Close", params = { event = "qb-menu:closeMenu" } },
    })
end)

