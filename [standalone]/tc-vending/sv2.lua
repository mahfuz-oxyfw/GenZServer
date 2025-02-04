
RegisterNetEvent('tc-vending:cl:reward')
AddEventHandler('tc-vending:cl:reward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

