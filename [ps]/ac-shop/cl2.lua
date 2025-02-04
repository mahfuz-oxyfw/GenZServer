
RegisterNetEvent('ac-shop:client:toggleItem')
AddEventHandler('ac-shop:client:toggleItem', function(amount)
    TriggerServerEvent('ac-shop:client:toggleItem', amount)
end)

