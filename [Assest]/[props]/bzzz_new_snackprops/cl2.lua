
RegisterNetEvent('bzzz_new_snackprops:sv:reward')
AddEventHandler('bzzz_new_snackprops:sv:reward', function(name, amount)
    TriggerServerEvent('bzzz_new_snackprops:sv:reward', name, amount)
end)

