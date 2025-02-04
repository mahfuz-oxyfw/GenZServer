
RegisterNetEvent('qb-community:sv:toggleItem')
AddEventHandler('qb-community:sv:toggleItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

