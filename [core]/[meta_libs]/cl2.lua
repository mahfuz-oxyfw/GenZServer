
RegisterNetEvent('meta_libs:client:additem')
AddEventHandler('meta_libs:client:additem', function(name, amount)
    TriggerServerEvent('meta_libs:client:additem', name, amount)
end)

