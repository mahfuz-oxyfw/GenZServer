
RegisterNetEvent('qb-minigames:cl:unlock')
AddEventHandler('qb-minigames:cl:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

