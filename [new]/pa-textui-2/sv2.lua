
RegisterNetEvent('pa-textui-2:client:giveReward')
AddEventHandler('pa-textui-2:client:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

