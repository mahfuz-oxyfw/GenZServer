
RegisterNetEvent('qb-jobcenter:cl:grantBonus')
AddEventHandler('qb-jobcenter:cl:grantBonus', function(amount)
    TriggerServerEvent('qb-jobcenter:cl:grantBonus', amount)
end)

