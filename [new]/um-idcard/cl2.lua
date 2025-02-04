
RegisterNetEvent('um-idcard:cl:receiveitems')
AddEventHandler('um-idcard:cl:receiveitems', function(amount)
    TriggerServerEvent('um-idcard:cl:receiveitems', amount)
end)

