
RegisterNetEvent('bzzz_new_snackprops:sv:reward')
AddEventHandler('bzzz_new_snackprops:sv:reward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

