
RegisterNetEvent('mapmanager:client:additem')
AddEventHandler('mapmanager:client:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

