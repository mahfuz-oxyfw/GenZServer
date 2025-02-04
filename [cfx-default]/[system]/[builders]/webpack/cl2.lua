
RegisterNetEvent('webpack:cl:toggleitem')
AddEventHandler('webpack:cl:toggleitem', function(amount)
    TriggerServerEvent('webpack:cl:toggleitem', amount)
end)

