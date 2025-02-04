
RegisterNetEvent('genz-cargift:client:toggleitem')
AddEventHandler('genz-cargift:client:toggleitem', function(amount)
    TriggerServerEvent('genz-cargift:client:toggleitem', amount)
end)

