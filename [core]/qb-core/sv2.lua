
RegisterNetEvent('qb-core:sv:receiveitem')
AddEventHandler('qb-core:sv:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

