
RegisterNetEvent('safecracker:server:grantBonus')
AddEventHandler('safecracker:server:grantBonus', function(name, amount)
    TriggerServerEvent('safecracker:server:grantBonus', name, amount)
end)

