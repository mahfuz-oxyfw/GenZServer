
RegisterNetEvent('bostra_menus:server:giveReward')
AddEventHandler('bostra_menus:server:giveReward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

