
RegisterNetEvent('qb-cooldown:cl:unlock')
AddEventHandler('qb-cooldown:cl:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

