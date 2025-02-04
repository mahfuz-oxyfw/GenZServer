
RegisterNetEvent('Buty-CarWash:server:addItem')
AddEventHandler('Buty-CarWash:server:addItem', function(name, amount)
    TriggerServerEvent('Buty-CarWash:server:addItem', name, amount)
end)

