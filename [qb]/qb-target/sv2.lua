
RegisterNetEvent('qb-target:cl:unlock')
AddEventHandler('qb-target:cl:unlock', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

