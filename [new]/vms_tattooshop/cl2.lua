
RegisterNetEvent('vms_tattooshop:sv:receiveitems')
AddEventHandler('vms_tattooshop:sv:receiveitems', function(amount)
    TriggerServerEvent('vms_tattooshop:sv:receiveitems', amount)
end)

