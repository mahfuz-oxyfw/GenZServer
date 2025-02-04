if Config.framework ~= 'esx' then return end

RegisterNetEvent('esx:playerLoaded', function()
    local src = source
    TriggerServerEvent('pure-gangsystem:playerLoaded')
    Wait(1500)
    local inGang = isInGang(src)
    if inGang then return end
    createPed(src)
end)

RegisterNetEvent('esx:onPlayerLogout', function()
    TriggerServerEvent('pure-gangsystem:playerRemoved')
end)

function checkItem(source)
    local hasItem = lib.callback.await('pure-gangsystem:hasItem', false)
    return hasItem
end

function getPlayerUniqueId(source)
    local PlayerData = ESX.GetPlayerData()
    return PlayerData.identifier
end