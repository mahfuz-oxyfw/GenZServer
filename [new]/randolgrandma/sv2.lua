
RegisterNetEvent('randolgrandma:sv:addItem')
AddEventHandler('randolgrandma:sv:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

