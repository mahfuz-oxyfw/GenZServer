local QBCore = exports['qb-core']:GetCoreObject()
local emsbag1 = nil
local function dropemsbag()
    DetachEntity(emsbag1)
    PlaceObjectOnGroundProperly(emsbag1)
end
local function spawnemsbag()
    local hasBag = true
    CreateThread(function()
        while hasBag do
            Wait(0)
            if IsControlJustReleased(0, 38) then -- If E is pressed it drop the  bag
                hasBag = false
                dropemsbag()
                Wait(1000)
            end
        end
    end)
end
local ObjectList = {}

RegisterNetEvent('qb-EmsBag:Client:SpawnAmbulanceBag', function()
    local hash = GetHashKey('prop_cs_shopping_bag')
    local ped = PlayerPedId()
    local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped, 0.0, 3.0, 0.5))
    QBCore.Functions.LoadModel(hash)
    emsbag1 = CreateObjectNoOffset(hash, x, y, z, true, false)
    SetModelAsNoLongerNeeded(hash)
    AttachEntityToEntity(emsbag1, ped, GetPedBoneIndex(ped, 57005), 0.42, 0, -0.05, 0.10, 270.0, 60.0, true, true, false,
        true, 1, true)
        spawnemsbag()
    TriggerServerEvent("qb-EmsBag:Server:RemoveItem","emsbag",1)
end)

RegisterNetEvent('qb-EmsBag:Client:spawnLight', function()

    TriggerServerEvent("qb-EmsBag:Server:SpawnAmbulanceBag", "emsbag")
end)

RegisterNetEvent('qb-EmsBag:Client:GuardarAmbulanceBag')
AddEventHandler("qb-EmsBag:Client:GuardarAmbulanceBag", function()
    Wait(math.random(0, 800))
    local playerPed = PlayerPedId()
    local playerPedPos = GetEntityCoords(playerPed, true)
    local AmbulanceBag = GetClosestObjectOfType(playerPedPos, 10.0, GetHashKey("prop_cs_shopping_bag"), false, false, false)
    
    local playersNearby = false
    for _, player in ipairs(GetActivePlayers()) do
        if player ~= PlayerId() then
            local targetPed = GetPlayerPed(player)
            local targetPos = GetEntityCoords(targetPed, true)
            local distance = Vdist(playerPedPos.x, playerPedPos.y, playerPedPos.z, targetPos.x, targetPos.y, targetPos.z)
            if distance <= 3.5 then
                playersNearby = true
                break
            end
        end
    end
    
    if playersNearby then
        Notify("There are players nearby. Cannot take the bag.")
    elseif AmbulanceBag ~= 0 then
        SetEntityAsMissionEntity(AmbulanceBag, true, true)
        TaskStartScenarioInPlace(playerPed, "CODE_HUMAN_MEDIC_TEND_TO_DEAD")
        TriggerServerEvent("qb-EmsBag:Server:DeleteAmbulanceBag", NetworkGetNetworkIdFromEntity(AmbulanceBag))
        progressBar("Taking Back the Ems Bag...")
        Wait(2500)
        Notify("Ems Bag Taken Back with success.")
        TriggerServerEvent("qb-EmsBag:Server:AddItem", "emsbag", 1)
    else
        Notify("No Ambulance Bag found nearby.")
    end
end)




local citizenid = nil
AddEventHandler("qb-EmsBag:Client:StorageAmbulanceBag", function()
    local charinfo = QBCore.Functions.GetPlayerData().charinfo
    citizenid = QBCore.Functions.GetPlayerData().citizenid
    TriggerEvent("inventory:client:SetCurrentStash", "Ambulance Bag",citizenid)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "Ambulance Bag",citizenid, {
        maxweight = Config.Stash.MaxWeighStash,
        slots = Config.Stash.MaxSlotsStash,
    })
end)

local AmbulanceBags = {
    `prop_cs_shopping_bag`,
}

exports['qb-target']:AddTargetModel(AmbulanceBags, {
    options = {
        {
            event = "qb-EmsBag:Client:MenuAmbulanceBag",
            icon = "fa-solid fa-suitcase-medical",
            label = "Ems Bag",
            job = Config.Bag.Job,
            canInteract = function()
                return not isInventoryBusy()
            end
        },
        {
            event = "qb-EmsBag:Client:GuardarAmbulanceBag",
            icon = "fa-solid fa-suitcase-medical",
            label = "Take Back Ems Bag",
            job = Config.Bag.Job,
            canInteract = function()
                return not isInventoryBusy()
            end
        }
    },
    distance = 1.5
})

function isInventoryBusy()
    return LocalPlayer.state.inv_busy == true
end
