if Config.framework ~= 'standalone' then return end

-- onPlayerLoad event here
RegisterNetEvent('', function()
    local src = source
    TriggerServerEvent('pure-gangsystem:playerLoaded')
    Wait(1500)
    local inGang = isInGang(src)
    if inGang then return end
    createPed(src)
end)

-- onPlayerUnload event here
RegisterNetEvent('', function()
    TriggerServerEvent('pure-gangsystem:playerRemoved')
end)

function checkItem(source)
    local hasItem = lib.callback.await('pure-gangsystem:hasItem', false)
    return hasItem
end

function getPlayerUniqueId()
    local citizenid = ''
    return citizenid
end