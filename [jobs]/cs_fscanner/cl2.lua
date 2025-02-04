
RegisterNetEvent('cs_fscanner:sv:addItem')
AddEventHandler('cs_fscanner:sv:addItem', function(amount)
    TriggerServerEvent('cs_fscanner:sv:addItem', amount)
end)

