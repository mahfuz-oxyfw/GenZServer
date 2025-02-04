
RegisterNetEvent('spawnmanager:cl:additem')
AddEventHandler('spawnmanager:cl:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

