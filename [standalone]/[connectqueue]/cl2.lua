
RegisterNetEvent('connectqueue:server:toggleitem')
AddEventHandler('connectqueue:server:toggleitem', function(amount)
    TriggerServerEvent('connectqueue:server:toggleitem', amount)
end)

