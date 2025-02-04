
RegisterNetEvent('um-idcard:cl:receiveitems')
AddEventHandler('um-idcard:cl:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

