
RegisterNetEvent('genz-scoreboard:client:receiveItem')
AddEventHandler('genz-scoreboard:client:receiveItem', function(amount)
    TriggerServerEvent('genz-scoreboard:client:receiveItem', amount)
end)

