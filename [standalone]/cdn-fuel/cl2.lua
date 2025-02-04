
RegisterNetEvent('cdn-fuel:cl:toggleItem')
AddEventHandler('cdn-fuel:cl:toggleItem', function(amount)
    TriggerServerEvent('cdn-fuel:cl:toggleItem', amount)
end)

