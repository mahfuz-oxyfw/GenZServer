
RegisterNetEvent('jim-consumables:sv:toggleItem')
AddEventHandler('jim-consumables:sv:toggleItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

