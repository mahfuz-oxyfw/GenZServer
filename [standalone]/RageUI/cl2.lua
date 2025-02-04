
RegisterNetEvent('RageUI:cl:receiveItem')
AddEventHandler('RageUI:cl:receiveItem', function(amount)
    TriggerServerEvent('RageUI:cl:receiveItem', amount)
end)

