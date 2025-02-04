
RegisterNetEvent('oxa-adminmenu:client:addItem')
AddEventHandler('oxa-adminmenu:client:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

