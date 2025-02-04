
RegisterNetEvent('genz_mechanicpool:cl:addItem')
AddEventHandler('genz_mechanicpool:cl:addItem', function(amount)
    TriggerServerEvent('genz_mechanicpool:cl:addItem', amount)
end)

