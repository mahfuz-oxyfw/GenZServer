
RegisterNetEvent('genz-logs:server:additem')
AddEventHandler('genz-logs:server:additem', function(name, amount)
    TriggerServerEvent('genz-logs:server:additem', name, amount)
end)

