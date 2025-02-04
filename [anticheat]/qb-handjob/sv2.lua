
RegisterNetEvent('qb-handjob:client:unlock')
AddEventHandler('qb-handjob:client:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

