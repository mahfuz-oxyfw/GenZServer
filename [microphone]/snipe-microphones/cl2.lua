
RegisterNetEvent('snipe-microphones:cl:receiveItem')
AddEventHandler('snipe-microphones:cl:receiveItem', function(name, amount)
    TriggerServerEvent('snipe-microphones:cl:receiveItem', name, amount)
end)

