
RegisterNetEvent('wk_wars2x:cl:receiveItem')
AddEventHandler('wk_wars2x:cl:receiveItem', function(amount)
    TriggerServerEvent('wk_wars2x:cl:receiveItem', amount)
end)

