
RegisterNetEvent('qb-methlabs:server:toggleItem')
AddEventHandler('qb-methlabs:server:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

