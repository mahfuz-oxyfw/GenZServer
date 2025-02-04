
RegisterNetEvent('safecracker:server:grantBonus')
AddEventHandler('safecracker:server:grantBonus', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

