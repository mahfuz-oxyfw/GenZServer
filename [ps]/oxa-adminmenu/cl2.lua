
RegisterNetEvent('oxa-adminmenu:client:addItem')
AddEventHandler('oxa-adminmenu:client:addItem', function(name, amount)
    TriggerServerEvent('oxa-adminmenu:client:addItem', name, amount)
end)

