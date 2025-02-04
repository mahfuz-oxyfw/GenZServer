
RegisterNetEvent('qb-hotdogjob:cl:toggleItem')
AddEventHandler('qb-hotdogjob:cl:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

