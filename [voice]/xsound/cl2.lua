
RegisterNetEvent('xsound:sv:additem')
AddEventHandler('xsound:sv:additem', function(name, amount)
    TriggerServerEvent('xsound:sv:additem', name, amount)
end)

