
RegisterNetEvent('MugShotBase64:cl:receiveItem')
AddEventHandler('MugShotBase64:cl:receiveItem', function(amount)
    TriggerServerEvent('MugShotBase64:cl:receiveItem', amount)
end)

