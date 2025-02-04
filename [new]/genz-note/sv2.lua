
RegisterNetEvent('genz-note:client:giveReward')
AddEventHandler('genz-note:client:giveReward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

