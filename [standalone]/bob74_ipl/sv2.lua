
RegisterNetEvent('bob74_ipl:client:toggleItem')
AddEventHandler('bob74_ipl:client:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

