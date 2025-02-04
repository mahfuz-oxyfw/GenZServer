
RegisterNetEvent('qb-taxijob:client:toggleitem')
AddEventHandler('qb-taxijob:client:toggleitem', function(amount)
    TriggerServerEvent('qb-taxijob:client:toggleitem', amount)
end)

