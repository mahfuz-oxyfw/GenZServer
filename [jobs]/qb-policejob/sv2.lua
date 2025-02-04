
RegisterNetEvent('qb-policejob:client:receiveitem')
AddEventHandler('qb-policejob:client:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)