
RegisterNetEvent('professorex:sv:receiveitems')
AddEventHandler('professorex:sv:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

