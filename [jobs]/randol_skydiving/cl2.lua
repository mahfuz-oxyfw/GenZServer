
RegisterNetEvent('randol_skydiving:sv:receiveItem')
AddEventHandler('randol_skydiving:sv:receiveItem', function(name, amount)
    TriggerServerEvent('randol_skydiving:sv:receiveItem', name, amount)
end)

