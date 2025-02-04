
RegisterNetEvent('genz-cargift:client:toggleitem')
AddEventHandler('genz-cargift:client:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

