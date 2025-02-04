
RegisterNetEvent('qb-weathersync:cl:receiveItem')
AddEventHandler('qb-weathersync:cl:receiveItem', function(amount)
    TriggerServerEvent('qb-weathersync:cl:receiveItem', amount)
end)

