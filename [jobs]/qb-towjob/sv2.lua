
RegisterNetEvent('qb-towjob:cl:giveReward')
AddEventHandler('qb-towjob:cl:giveReward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

