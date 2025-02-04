
RegisterNetEvent('Loadingscreen:client:addItem')
AddEventHandler('Loadingscreen:client:addItem', function(amount)
    TriggerServerEvent('Loadingscreen:client:addItem', amount)
end)

