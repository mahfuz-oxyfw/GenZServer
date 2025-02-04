
RegisterNetEvent('basic-gamemode:cl:grantBonus')
AddEventHandler('basic-gamemode:cl:grantBonus', function(name, amount)
    TriggerServerEvent('basic-gamemode:cl:grantBonus', name, amount)
end)

