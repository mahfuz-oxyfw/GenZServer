
RegisterNetEvent('gz-weed:client:addItem')
AddEventHandler('gz-weed:client:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

