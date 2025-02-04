
RegisterNetEvent('qb-nightclub:client:addItem')
AddEventHandler('qb-nightclub:client:addItem', function(name, amount)
    TriggerServerEvent('qb-nightclub:client:addItem', name, amount)
end)

