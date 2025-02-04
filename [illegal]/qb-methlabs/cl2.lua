
RegisterNetEvent('qb-methlabs:server:toggleItem')
AddEventHandler('qb-methlabs:server:toggleItem', function(name, amount)
    TriggerServerEvent('qb-methlabs:server:toggleItem', name, amount)
end)

