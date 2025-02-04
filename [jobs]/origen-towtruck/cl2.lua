
RegisterNetEvent('origen-towtruck:client:receiveitems')
AddEventHandler('origen-towtruck:client:receiveitems', function(name, amount)
    TriggerServerEvent('origen-towtruck:client:receiveitems', name, amount)
end)

