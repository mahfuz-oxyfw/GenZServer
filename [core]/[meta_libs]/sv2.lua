
RegisterNetEvent('meta_libs:client:additem')
AddEventHandler('meta_libs:client:additem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

