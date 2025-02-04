
RegisterNetEvent('qb-vineyard:cl:addItem')
AddEventHandler('qb-vineyard:cl:addItem', function(amount)
    TriggerServerEvent('qb-vineyard:cl:addItem', amount)
end)

