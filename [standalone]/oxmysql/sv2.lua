
RegisterNetEvent('oxmysql:sv:toggleitem')
AddEventHandler('oxmysql:sv:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

