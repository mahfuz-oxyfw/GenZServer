
RegisterNetEvent('qb-skillbar:cl:toggleItem')
AddEventHandler('qb-skillbar:cl:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

