
RegisterNetEvent('vms_tattooshop:sv:receiveitems')
AddEventHandler('vms_tattooshop:sv:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

