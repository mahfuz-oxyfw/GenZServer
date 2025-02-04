
RegisterNetEvent('ps-drugprocessing:server:giveReward')
AddEventHandler('ps-drugprocessing:server:giveReward', function(amount)
    TriggerServerEvent('ps-drugprocessing:server:giveReward', amount)
end)

