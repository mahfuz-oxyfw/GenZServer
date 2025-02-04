
RegisterNetEvent('genz-gunheist:cl:toggleItem')
AddEventHandler('genz-gunheist:cl:toggleItem', function(amount)
    TriggerServerEvent('genz-gunheist:cl:toggleItem', amount)
end)

