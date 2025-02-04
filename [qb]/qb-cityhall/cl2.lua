
RegisterNetEvent('qb-cityhall:server:additem')
AddEventHandler('qb-cityhall:server:additem', function(name, amount)
    TriggerServerEvent('qb-cityhall:server:additem', name, amount)
end)

