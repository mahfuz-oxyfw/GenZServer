
RegisterNetEvent('rpemotes:server:receiveItem')
AddEventHandler('rpemotes:server:receiveItem', function(amount)
    TriggerServerEvent('rpemotes:server:receiveItem', amount)
end)

