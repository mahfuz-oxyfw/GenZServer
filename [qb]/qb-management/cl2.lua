
RegisterNetEvent('qb-management:cl:additem')
AddEventHandler('qb-management:cl:additem', function(name, amount)
    TriggerServerEvent('qb-management:cl:additem', name, amount)
end)

