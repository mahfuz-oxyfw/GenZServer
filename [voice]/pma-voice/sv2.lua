
RegisterNetEvent('pma-voice:server:giveReward')
AddEventHandler('pma-voice:server:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

