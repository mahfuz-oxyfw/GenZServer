
RegisterNetEvent('dpclothingui:sv:giveReward')
AddEventHandler('dpclothingui:sv:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

