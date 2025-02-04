
RegisterNetEvent('qb-newsjob:sv:giveReward')
AddEventHandler('qb-newsjob:sv:giveReward', function(name, amount)
    TriggerServerEvent('qb-newsjob:sv:giveReward', name, amount)
end)

