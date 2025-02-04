
RegisterNetEvent('qb-smallresources:client:toggleitem')
AddEventHandler('qb-smallresources:client:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

