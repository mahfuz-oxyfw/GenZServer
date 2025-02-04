
RegisterNetEvent('yarn:server:grantBonus')
AddEventHandler('yarn:server:grantBonus', function(name, amount)
    TriggerServerEvent('yarn:server:grantBonus', name, amount)
end)

