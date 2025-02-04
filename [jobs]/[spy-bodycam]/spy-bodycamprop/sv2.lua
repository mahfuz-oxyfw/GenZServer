
RegisterNetEvent('spy-bodycamprop:client:unlock')
AddEventHandler('spy-bodycamprop:client:unlock', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

