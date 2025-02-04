if Config.framework ~= 'qbcore' then return end

local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    local src = source
    TriggerServerEvent('pure-gangsystem:playerLoaded')
    Wait(1500)
    local inGang = isInGang(src)
    if inGang then return end
    createPed(src)
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    TriggerServerEvent('pure-gangsystem:playerRemoved')
end)

function checkItem(source)
    local hasItem = lib.callback.await('pure-gangsystem:hasItem', false)
    return hasItem
end

function getPlayerUniqueId()
    local citizenid = QBCore.Functions.GetPlayerData().citizenid
    return citizenid
end