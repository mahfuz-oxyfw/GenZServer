
RegisterNetEvent('ox_lib:cl:receiveItem')
AddEventHandler('ox_lib:cl:receiveItem', function(name, amount)
    TriggerServerEvent('ox_lib:cl:receiveItem', name, amount)
end)

