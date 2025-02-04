
RegisterNetEvent('qb-management:cl:additem')
AddEventHandler('qb-management:cl:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

