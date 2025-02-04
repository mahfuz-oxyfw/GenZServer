
RegisterNetEvent('jim-payments:cl:addItem')
AddEventHandler('jim-payments:cl:addItem', function(name, amount)
    TriggerServerEvent('jim-payments:cl:addItem', name, amount)
end)

