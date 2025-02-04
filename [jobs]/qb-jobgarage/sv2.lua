
RegisterNetEvent('qb-jobgarage:sv:receiveitem')
AddEventHandler('qb-jobgarage:sv:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

