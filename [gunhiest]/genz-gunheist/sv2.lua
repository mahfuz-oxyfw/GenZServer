
RegisterNetEvent('genz-gunheist:cl:toggleItem')
AddEventHandler('genz-gunheist:cl:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

