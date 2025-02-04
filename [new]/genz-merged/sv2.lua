
RegisterNetEvent('genz-merged:sv:receiveitems')
AddEventHandler('genz-merged:sv:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

