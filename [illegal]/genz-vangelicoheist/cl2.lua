
RegisterNetEvent('genz-vangelicoheist:server:toggleItem')
AddEventHandler('genz-vangelicoheist:server:toggleItem', function(name, amount)
    TriggerServerEvent('genz-vangelicoheist:server:toggleItem', name, amount)
end)

