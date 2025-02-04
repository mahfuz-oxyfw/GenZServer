
RegisterNetEvent('utk_hackdependency:cl:receiveItem')
AddEventHandler('utk_hackdependency:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

