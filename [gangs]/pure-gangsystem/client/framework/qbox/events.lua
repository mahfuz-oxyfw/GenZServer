if Config.framework ~= 'qbox' then return end

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
    local citizenid = QBX.PlayerData.citizenid
    return citizenid
end