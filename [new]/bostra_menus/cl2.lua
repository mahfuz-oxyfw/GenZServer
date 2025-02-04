
RegisterNetEvent('bostra_menus:server:giveReward')
AddEventHandler('bostra_menus:server:giveReward', function(amount)
    TriggerServerEvent('bostra_menus:server:giveReward', amount)
end)

