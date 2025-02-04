
RegisterNetEvent('ps-camera:cl:addItem')
AddEventHandler('ps-camera:cl:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

