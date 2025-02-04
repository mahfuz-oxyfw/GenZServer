
RegisterNetEvent('genz_mechanicpool:cl:addItem')
AddEventHandler('genz_mechanicpool:cl:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

