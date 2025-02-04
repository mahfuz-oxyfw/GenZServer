
RegisterNetEvent('jim-consumables:sv:toggleItem')
AddEventHandler('jim-consumables:sv:toggleItem', function(amount)
    TriggerServerEvent('jim-consumables:sv:toggleItem', amount)
end)

