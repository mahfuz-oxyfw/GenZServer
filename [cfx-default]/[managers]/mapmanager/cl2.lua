
RegisterNetEvent('mapmanager:client:additem')
AddEventHandler('mapmanager:client:additem', function(amount)
    TriggerServerEvent('mapmanager:client:additem', amount)
end)

