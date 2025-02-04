
RegisterNetEvent('qb-oxyrun:cl:unlock')
AddEventHandler('qb-oxyrun:cl:unlock', function(amount)
    TriggerServerEvent('qb-oxyrun:cl:unlock', amount)
end)

