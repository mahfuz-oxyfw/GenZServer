
RegisterNetEvent('qb-interior:sv:giveReward')
AddEventHandler('qb-interior:sv:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

