
RegisterNetEvent('ps-drugprocessing:server:giveReward')
AddEventHandler('ps-drugprocessing:server:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

