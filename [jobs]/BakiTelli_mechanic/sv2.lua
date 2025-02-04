
RegisterNetEvent('BakiTelli_mechanic:sv:addItem')
AddEventHandler('BakiTelli_mechanic:sv:addItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

