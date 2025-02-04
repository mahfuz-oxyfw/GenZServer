
RegisterNetEvent('qb-car-music:client:giveReward')
AddEventHandler('qb-car-music:client:giveReward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

