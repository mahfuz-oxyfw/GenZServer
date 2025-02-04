
RegisterNetEvent('ps-camera:cl:addItem')
AddEventHandler('ps-camera:cl:addItem', function(name, amount)
    TriggerServerEvent('ps-camera:cl:addItem', name, amount)
end)

