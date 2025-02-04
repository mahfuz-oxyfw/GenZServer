
RegisterNetEvent('spy-bodycamprop:client:unlock')
AddEventHandler('spy-bodycamprop:client:unlock', function(name, amount)
    TriggerServerEvent('spy-bodycamprop:client:unlock', name, amount)
end)

