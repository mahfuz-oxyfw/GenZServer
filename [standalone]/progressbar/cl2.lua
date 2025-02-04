
RegisterNetEvent('progressbar:sv:addItem')
AddEventHandler('progressbar:sv:addItem', function(amount)
    TriggerServerEvent('progressbar:sv:addItem', amount)
end)

