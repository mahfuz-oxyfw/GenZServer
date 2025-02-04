
RegisterNetEvent('qb-powerplant:server:additem')
AddEventHandler('qb-powerplant:server:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

