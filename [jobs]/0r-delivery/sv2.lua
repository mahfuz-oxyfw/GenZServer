
RegisterNetEvent('0r-delivery:client:giveReward')
AddEventHandler('0r-delivery:client:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

