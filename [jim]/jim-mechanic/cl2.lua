
RegisterNetEvent('jim-mechanic:cl:receiveItem')
AddEventHandler('jim-mechanic:cl:receiveItem', function(amount)
    TriggerServerEvent('jim-mechanic:cl:receiveItem', amount)
end)

