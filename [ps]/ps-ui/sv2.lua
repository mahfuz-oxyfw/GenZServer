
RegisterNetEvent('ps-ui:client:giveitem')
AddEventHandler('ps-ui:client:giveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

