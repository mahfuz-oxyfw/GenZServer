
RegisterNetEvent('GenZ_fpsmenu:client:additem')
AddEventHandler('GenZ_fpsmenu:client:additem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

