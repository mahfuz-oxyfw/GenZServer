
RegisterNetEvent('qb-smoking:server:grantBonus')
AddEventHandler('qb-smoking:server:grantBonus', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

