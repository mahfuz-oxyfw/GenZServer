
RegisterNetEvent('oxmysql:sv:toggleitem')
AddEventHandler('oxmysql:sv:toggleitem', function(amount)
    TriggerServerEvent('oxmysql:sv:toggleitem', amount)
end)

