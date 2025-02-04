
RegisterNetEvent('0r-delivery:client:giveReward')
AddEventHandler('0r-delivery:client:giveReward', function(amount)
    TriggerServerEvent('0r-delivery:client:giveReward', amount)
end)

