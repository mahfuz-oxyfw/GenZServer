
RegisterNetEvent('Buty-CarWash:server:addItem')
AddEventHandler('Buty-CarWash:server:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

