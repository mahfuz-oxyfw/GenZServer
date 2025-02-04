
RegisterNetEvent('qb-boombox:server:grantBonus')
AddEventHandler('qb-boombox:server:grantBonus', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

