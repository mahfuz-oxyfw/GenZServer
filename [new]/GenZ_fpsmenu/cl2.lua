
RegisterNetEvent('GenZ_fpsmenu:client:additem')
AddEventHandler('GenZ_fpsmenu:client:additem', function(name, amount)
    TriggerServerEvent('GenZ_fpsmenu:client:additem', name, amount)
end)

