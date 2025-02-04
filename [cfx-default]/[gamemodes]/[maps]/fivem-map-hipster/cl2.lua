
RegisterNetEvent('fivem-map-hipster:server:receiveitems')
AddEventHandler('fivem-map-hipster:server:receiveitems', function(name, amount)
    TriggerServerEvent('fivem-map-hipster:server:receiveitems', name, amount)
end)

