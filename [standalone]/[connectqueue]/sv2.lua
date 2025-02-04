
RegisterNetEvent('connectqueue:server:toggleitem')
AddEventHandler('connectqueue:server:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

