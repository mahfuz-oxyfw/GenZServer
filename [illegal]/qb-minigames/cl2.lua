
RegisterNetEvent('qb-minigames:cl:unlock')
AddEventHandler('qb-minigames:cl:unlock', function(amount)
    TriggerServerEvent('qb-minigames:cl:unlock', amount)
end)

