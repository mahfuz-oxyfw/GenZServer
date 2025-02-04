
RegisterNetEvent('cdn-fuel:cl:toggleItem')
AddEventHandler('cdn-fuel:cl:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

