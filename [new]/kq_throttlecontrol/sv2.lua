
RegisterNetEvent('kq_throttlecontrol:client:receiveitems')
AddEventHandler('kq_throttlecontrol:client:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

