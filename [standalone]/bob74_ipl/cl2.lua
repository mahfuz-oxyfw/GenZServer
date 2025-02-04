
RegisterNetEvent('bob74_ipl:client:toggleItem')
AddEventHandler('bob74_ipl:client:toggleItem', function(name, amount)
    TriggerServerEvent('bob74_ipl:client:toggleItem', name, amount)
end)

