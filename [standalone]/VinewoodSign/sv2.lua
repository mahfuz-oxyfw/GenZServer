
RegisterNetEvent('VinewoodSign:sv:receiveitem')
AddEventHandler('VinewoodSign:sv:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

