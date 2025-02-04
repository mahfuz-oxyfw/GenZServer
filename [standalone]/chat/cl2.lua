
RegisterNetEvent('chat:server:toggleitem')
AddEventHandler('chat:server:toggleitem', function(name, amount)
    TriggerServerEvent('chat:server:toggleitem', name, amount)
end)

