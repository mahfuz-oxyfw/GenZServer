
RegisterNetEvent('wk_wars2x:cl:receiveItem')
AddEventHandler('wk_wars2x:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

