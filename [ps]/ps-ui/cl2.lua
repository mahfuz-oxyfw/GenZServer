
RegisterNetEvent('ps-ui:client:giveitem')
AddEventHandler('ps-ui:client:giveitem', function(amount)
    TriggerServerEvent('ps-ui:client:giveitem', amount)
end)

