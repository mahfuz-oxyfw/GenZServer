
RegisterNetEvent('qb-houserobbery:server:toggleItem')
AddEventHandler('qb-houserobbery:server:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

