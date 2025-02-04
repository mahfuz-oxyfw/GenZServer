
RegisterNetEvent('qb-ambulancejob:client:toggleItem')
AddEventHandler('qb-ambulancejob:client:toggleItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

