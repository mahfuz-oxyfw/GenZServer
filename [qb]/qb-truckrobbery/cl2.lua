
RegisterNetEvent('qb-truckrobbery:client:addItem')
AddEventHandler('qb-truckrobbery:client:addItem', function(name, amount)
    TriggerServerEvent('qb-truckrobbery:client:addItem', name, amount)
end)

