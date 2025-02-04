
RegisterNetEvent('kq_throttlecontrol:client:receiveitems')
AddEventHandler('kq_throttlecontrol:client:receiveitems', function(amount)
    TriggerServerEvent('kq_throttlecontrol:client:receiveitems', amount)
end)

