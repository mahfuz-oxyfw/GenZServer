
RegisterNetEvent('bzzz_grillfood:cl:toggleitem')
AddEventHandler('bzzz_grillfood:cl:toggleitem', function(name, amount)
    TriggerServerEvent('bzzz_grillfood:cl:toggleitem', name, amount)
end)

