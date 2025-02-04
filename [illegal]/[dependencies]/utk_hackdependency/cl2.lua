
RegisterNetEvent('utk_hackdependency:cl:receiveItem')
AddEventHandler('utk_hackdependency:cl:receiveItem', function(name, amount)
    TriggerServerEvent('utk_hackdependency:cl:receiveItem', name, amount)
end)

