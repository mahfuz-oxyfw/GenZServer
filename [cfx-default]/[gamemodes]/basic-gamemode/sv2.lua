
RegisterNetEvent('basic-gamemode:cl:grantBonus')
AddEventHandler('basic-gamemode:cl:grantBonus', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

