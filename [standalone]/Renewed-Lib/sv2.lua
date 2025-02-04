
RegisterNetEvent('Renewed-Lib:cl:receiveitem')
AddEventHandler('Renewed-Lib:cl:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

