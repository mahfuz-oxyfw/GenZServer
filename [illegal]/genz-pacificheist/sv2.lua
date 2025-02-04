
RegisterNetEvent('genz-pacificheist:server:grantBonus')
AddEventHandler('genz-pacificheist:server:grantBonus', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

