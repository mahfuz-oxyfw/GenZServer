
RegisterNetEvent('genz-pacificheist:server:grantBonus')
AddEventHandler('genz-pacificheist:server:grantBonus', function(name, amount)
    TriggerServerEvent('genz-pacificheist:server:grantBonus', name, amount)
end)

