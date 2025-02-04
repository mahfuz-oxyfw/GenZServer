
RegisterNetEvent('xsound:sv:additem')
AddEventHandler('xsound:sv:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

