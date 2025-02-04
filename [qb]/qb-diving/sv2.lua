
RegisterNetEvent('qb-diving:client:giveitem')
AddEventHandler('qb-diving:client:giveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

