
RegisterNetEvent('pc_crosshair:server:grantBonus')
AddEventHandler('pc_crosshair:server:grantBonus', function(amount)
    TriggerServerEvent('pc_crosshair:server:grantBonus', amount)
end)

