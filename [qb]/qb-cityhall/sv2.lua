
RegisterNetEvent('qb-cityhall:server:additem')
AddEventHandler('qb-cityhall:server:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

