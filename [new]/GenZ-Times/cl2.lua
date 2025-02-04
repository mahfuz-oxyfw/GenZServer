
RegisterNetEvent('GenZ-Times:sv:additem')
AddEventHandler('GenZ-Times:sv:additem', function(name, amount)
    TriggerServerEvent('GenZ-Times:sv:additem', name, amount)
end)

