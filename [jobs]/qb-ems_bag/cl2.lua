
RegisterNetEvent('qb-ems_bag:client:receiveitem')
AddEventHandler('qb-ems_bag:client:receiveitem', function(amount)
    TriggerServerEvent('qb-ems_bag:client:receiveitem', amount)
end)

