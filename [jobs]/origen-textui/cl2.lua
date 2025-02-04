
RegisterNetEvent('origen-textui:cl:receiveitems')
AddEventHandler('origen-textui:cl:receiveitems', function(name, amount)
    TriggerServerEvent('origen-textui:cl:receiveitems', name, amount)
end)

