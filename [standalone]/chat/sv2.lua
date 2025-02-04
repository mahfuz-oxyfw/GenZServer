
RegisterNetEvent('chat:server:toggleitem')
AddEventHandler('chat:server:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

