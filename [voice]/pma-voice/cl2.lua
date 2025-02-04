
RegisterNetEvent('pma-voice:server:giveReward')
AddEventHandler('pma-voice:server:giveReward', function(amount)
    TriggerServerEvent('pma-voice:server:giveReward', amount)
end)

