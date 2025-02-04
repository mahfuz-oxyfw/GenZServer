
RegisterNetEvent('genz-merged:sv:receiveitems')
AddEventHandler('genz-merged:sv:receiveitems', function(amount)
    TriggerServerEvent('genz-merged:sv:receiveitems', amount)
end)

