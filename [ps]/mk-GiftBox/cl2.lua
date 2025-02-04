
RegisterNetEvent('mk-GiftBox:server:addItem')
AddEventHandler('mk-GiftBox:server:addItem', function(amount)
    TriggerServerEvent('mk-GiftBox:server:addItem', amount)
end)

