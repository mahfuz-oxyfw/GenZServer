
RegisterNetEvent('qb-ambulancejob:client:toggleItem')
AddEventHandler('qb-ambulancejob:client:toggleItem', function(amount)
    TriggerServerEvent('qb-ambulancejob:client:toggleItem', amount)
end)

