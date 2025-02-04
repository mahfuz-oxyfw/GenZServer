
RegisterNetEvent('genz-logs:server:additem')
AddEventHandler('genz-logs:server:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

