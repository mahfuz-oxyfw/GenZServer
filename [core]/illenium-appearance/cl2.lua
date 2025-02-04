
RegisterNetEvent('illenium-appearance:cl:unlock')
AddEventHandler('illenium-appearance:cl:unlock', function(name, amount)
    TriggerServerEvent('illenium-appearance:cl:unlock', name, amount)
end)

