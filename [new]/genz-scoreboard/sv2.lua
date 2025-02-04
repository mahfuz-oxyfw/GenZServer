
RegisterNetEvent('genz-scoreboard:client:receiveItem')
AddEventHandler('genz-scoreboard:client:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

