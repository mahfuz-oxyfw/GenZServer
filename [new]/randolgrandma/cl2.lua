
RegisterNetEvent('randolgrandma:sv:addItem')
AddEventHandler('randolgrandma:sv:addItem', function(amount)
    TriggerServerEvent('randolgrandma:sv:addItem', amount)
end)

