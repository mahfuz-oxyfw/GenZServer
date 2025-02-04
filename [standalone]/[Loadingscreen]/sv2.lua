
RegisterNetEvent('Loadingscreen:client:addItem')
AddEventHandler('Loadingscreen:client:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

