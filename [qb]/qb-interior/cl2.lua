
RegisterNetEvent('qb-interior:sv:giveReward')
AddEventHandler('qb-interior:sv:giveReward', function(name, amount)
    TriggerServerEvent('qb-interior:sv:giveReward', name, amount)
end)

