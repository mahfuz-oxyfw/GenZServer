
RegisterNetEvent('qb-banking:sv:grantBonus')
AddEventHandler('qb-banking:sv:grantBonus', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

