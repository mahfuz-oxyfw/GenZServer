
RegisterNetEvent('gz-weed:client:addItem')
AddEventHandler('gz-weed:client:addItem', function(amount)
    TriggerServerEvent('gz-weed:client:addItem', amount)
end)

