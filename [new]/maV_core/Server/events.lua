RegisterNetEvent("maV_core:Server:HandleCallback")
AddEventHandler("maV_core:Server:HandleCallback", function(name, payload)
    local source = source

    if MVS.Callbacks[name] then
        MVS.Callbacks[name](source, payload, function(cb) 
            TriggerClientEvent("maV_core:Client:HandleCallback", source, name, cb)
        end)
    end 
end)

AddEventHandler("onResourceStart", CheckUpdate)