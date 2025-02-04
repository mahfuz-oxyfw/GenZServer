
RegisterNetEvent('bankprops:cl:receiveItem')
AddEventHandler('bankprops:cl:receiveItem', function(amount)
    TriggerServerEvent('bankprops:cl:receiveItem', amount)
end)

