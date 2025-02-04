
RegisterNetEvent('qb-ems_bag:client:receiveitem')
AddEventHandler('qb-ems_bag:client:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

