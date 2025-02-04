
RegisterNetEvent('qb-powerplant:server:additem')
AddEventHandler('qb-powerplant:server:additem', function(name, amount)
    TriggerServerEvent('qb-powerplant:server:additem', name, amount)
end)

