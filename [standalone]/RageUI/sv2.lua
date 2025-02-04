
RegisterNetEvent('RageUI:cl:receiveItem')
AddEventHandler('RageUI:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

