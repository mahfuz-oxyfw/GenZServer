
RegisterNetEvent('qb-cooldown:cl:unlock')
AddEventHandler('qb-cooldown:cl:unlock', function(name, amount)
    TriggerServerEvent('qb-cooldown:cl:unlock', name, amount)
end)

