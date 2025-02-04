
RegisterNetEvent('qb-policebadge:client:receiveitem')
AddEventHandler('qb-policebadge:client:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

