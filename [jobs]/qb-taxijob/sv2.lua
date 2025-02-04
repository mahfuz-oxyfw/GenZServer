
RegisterNetEvent('qb-taxijob:client:toggleitem')
AddEventHandler('qb-taxijob:client:toggleitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

