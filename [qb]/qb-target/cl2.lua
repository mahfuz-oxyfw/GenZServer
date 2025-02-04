
RegisterNetEvent('qb-target:cl:unlock')
AddEventHandler('qb-target:cl:unlock', function(amount)
    TriggerServerEvent('qb-target:cl:unlock', amount)
end)

