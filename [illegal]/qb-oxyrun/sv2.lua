
RegisterNetEvent('qb-oxyrun:cl:unlock')
AddEventHandler('qb-oxyrun:cl:unlock', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

