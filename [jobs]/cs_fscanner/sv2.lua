
RegisterNetEvent('cs_fscanner:sv:addItem')
AddEventHandler('cs_fscanner:sv:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

