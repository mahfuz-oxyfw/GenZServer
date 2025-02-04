
RegisterNetEvent('sessionmanager:cl:toggleitem')
AddEventHandler('sessionmanager:cl:toggleitem', function(name, amount)
    TriggerServerEvent('sessionmanager:cl:toggleitem', name, amount)
end)

