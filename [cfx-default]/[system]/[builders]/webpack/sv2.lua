
RegisterNetEvent('webpack:cl:toggleitem')
AddEventHandler('webpack:cl:toggleitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

