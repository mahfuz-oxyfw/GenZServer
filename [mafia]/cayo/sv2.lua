
RegisterNetEvent('cayo:sv:receiveItem')
AddEventHandler('cayo:sv:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

