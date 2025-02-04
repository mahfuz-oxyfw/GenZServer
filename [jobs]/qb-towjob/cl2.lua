
RegisterNetEvent('qb-towjob:cl:giveReward')
AddEventHandler('qb-towjob:cl:giveReward', function(amount)
    TriggerServerEvent('qb-towjob:cl:giveReward', amount)
end)

