
RegisterNetEvent('mk-GiftBox:server:addItem')
AddEventHandler('mk-GiftBox:server:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

