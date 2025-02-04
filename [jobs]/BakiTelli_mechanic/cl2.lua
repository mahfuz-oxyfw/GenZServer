
RegisterNetEvent('BakiTelli_mechanic:sv:addItem')
AddEventHandler('BakiTelli_mechanic:sv:addItem', function(name, amount)
    TriggerServerEvent('BakiTelli_mechanic:sv:addItem', name, amount)
end)

