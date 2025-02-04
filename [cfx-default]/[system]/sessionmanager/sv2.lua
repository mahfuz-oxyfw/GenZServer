
RegisterNetEvent('sessionmanager:cl:toggleitem')
AddEventHandler('sessionmanager:cl:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

