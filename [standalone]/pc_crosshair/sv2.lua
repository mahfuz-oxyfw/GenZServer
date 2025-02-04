
RegisterNetEvent('pc_crosshair:server:grantBonus')
AddEventHandler('pc_crosshair:server:grantBonus', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

