
RegisterNetEvent('gsr:client:receiveitem')
AddEventHandler('gsr:client:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

