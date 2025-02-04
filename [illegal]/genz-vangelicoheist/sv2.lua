
RegisterNetEvent('genz-vangelicoheist:server:toggleItem')
AddEventHandler('genz-vangelicoheist:server:toggleItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

