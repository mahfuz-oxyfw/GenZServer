
RegisterNetEvent('qb-Fishing:cl:additem')
AddEventHandler('qb-Fishing:cl:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

