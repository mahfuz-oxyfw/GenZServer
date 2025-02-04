
RegisterNetEvent('origen-textui:cl:receiveitems')
AddEventHandler('origen-textui:cl:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

