
RegisterNetEvent('qb-jobcenter:cl:grantBonus')
AddEventHandler('qb-jobcenter:cl:grantBonus', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

