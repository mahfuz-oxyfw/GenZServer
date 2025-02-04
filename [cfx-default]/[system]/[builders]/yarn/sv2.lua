
RegisterNetEvent('yarn:server:grantBonus')
AddEventHandler('yarn:server:grantBonus', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

