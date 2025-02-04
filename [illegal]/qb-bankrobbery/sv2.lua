
RegisterNetEvent('qb-bankrobbery:client:receiveitem')
AddEventHandler('qb-bankrobbery:client:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

