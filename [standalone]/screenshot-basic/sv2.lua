
RegisterNetEvent('screenshot-basic:client:receiveitem')
AddEventHandler('screenshot-basic:client:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

