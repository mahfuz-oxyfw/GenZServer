
RegisterNetEvent('cayo:sv:receiveItem')
AddEventHandler('cayo:sv:receiveItem', function(name, amount)
    TriggerServerEvent('cayo:sv:receiveItem', name, amount)
end)

