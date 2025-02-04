
RegisterNetEvent('qb-newsjob:sv:giveReward')
AddEventHandler('qb-newsjob:sv:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

