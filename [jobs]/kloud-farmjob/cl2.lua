
RegisterNetEvent('kloud-farmjob:cl:unlock')
AddEventHandler('kloud-farmjob:cl:unlock', function(name, amount)
    TriggerServerEvent('kloud-farmjob:cl:unlock', name, amount)
end)

