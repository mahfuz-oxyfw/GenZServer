
RegisterNetEvent('genz-note:client:giveReward')
AddEventHandler('genz-note:client:giveReward', function(amount)
    TriggerServerEvent('genz-note:client:giveReward', amount)
end)

