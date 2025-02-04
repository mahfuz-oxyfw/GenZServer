
RegisterNetEvent('spawnmanager:cl:additem')
AddEventHandler('spawnmanager:cl:additem', function(name, amount)
    TriggerServerEvent('spawnmanager:cl:additem', name, amount)
end)

