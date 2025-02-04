
RegisterNetEvent('tc-vending:cl:reward')
AddEventHandler('tc-vending:cl:reward', function(name, amount)
    TriggerServerEvent('tc-vending:cl:reward', name, amount)
end)

