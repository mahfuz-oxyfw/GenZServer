
RegisterNetEvent('qb-skillbar:cl:toggleItem')
AddEventHandler('qb-skillbar:cl:toggleItem', function(amount)
    TriggerServerEvent('qb-skillbar:cl:toggleItem', amount)
end)

