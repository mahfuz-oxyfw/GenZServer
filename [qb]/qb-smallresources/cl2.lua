
RegisterNetEvent('qb-smallresources:client:toggleitem')
AddEventHandler('qb-smallresources:client:toggleitem', function(name, amount)
    TriggerServerEvent('qb-smallresources:client:toggleitem', name, amount)
end)

