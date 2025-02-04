
RegisterNetEvent('ac-shop:client:toggleItem')
AddEventHandler('ac-shop:client:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

