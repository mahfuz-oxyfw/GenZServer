
RegisterNetEvent('bzzz_grillfood:cl:toggleitem')
AddEventHandler('bzzz_grillfood:cl:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

