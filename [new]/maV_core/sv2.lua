
RegisterNetEvent('maV_core:client:additem')
AddEventHandler('maV_core:client:additem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

