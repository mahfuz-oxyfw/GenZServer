
RegisterNetEvent('progressbar:sv:addItem')
AddEventHandler('progressbar:sv:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

