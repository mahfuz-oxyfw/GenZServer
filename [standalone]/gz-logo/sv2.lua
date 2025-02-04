
RegisterNetEvent('gz-logo:sv:receiveitem')
AddEventHandler('gz-logo:sv:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

