
RegisterNetEvent('maV_core:client:additem')
AddEventHandler('maV_core:client:additem', function(amount)
    TriggerServerEvent('maV_core:client:additem', amount)
end)

