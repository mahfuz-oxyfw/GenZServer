
RegisterNetEvent('kloud-farmjob:cl:unlock')
AddEventHandler('kloud-farmjob:cl:unlock', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

