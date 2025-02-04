
RegisterNetEvent('GenZ-Times:sv:additem')
AddEventHandler('GenZ-Times:sv:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

