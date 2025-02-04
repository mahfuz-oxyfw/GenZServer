
RegisterNetEvent('qb-Fishing:cl:additem')
AddEventHandler('qb-Fishing:cl:additem', function(amount)
    TriggerServerEvent('qb-Fishing:cl:additem', amount)
end)

