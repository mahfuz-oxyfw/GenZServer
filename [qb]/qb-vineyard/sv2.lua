
RegisterNetEvent('qb-vineyard:cl:addItem')
AddEventHandler('qb-vineyard:cl:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

