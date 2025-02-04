
RegisterNetEvent('professorex:sv:receiveitems')
AddEventHandler('professorex:sv:receiveitems', function(name, amount)
    TriggerServerEvent('professorex:sv:receiveitems', name, amount)
end)

