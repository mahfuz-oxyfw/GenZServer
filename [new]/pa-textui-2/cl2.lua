
RegisterNetEvent('pa-textui-2:client:giveReward')
AddEventHandler('pa-textui-2:client:giveReward', function(name, amount)
    TriggerServerEvent('pa-textui-2:client:giveReward', name, amount)
end)

