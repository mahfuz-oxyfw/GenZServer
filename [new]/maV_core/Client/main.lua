MVS = {}
MVS.Callbacks = {}
MVS.Framework = nil
MVS.Game = {}
MVS.Functions = MVS_Functions
MVS.FrameworkName = Config.Framework
MVS.TriggerServerCallback = function(name, payload, func) 
    if not func then 
        func = function() end
    end

    MVS.Callbacks[name] = func

    TriggerServerEvent("maV_core:Server:HandleCallback", name, payload)
end

MVS.Game.GetVehicleProperties = function(vehicle) 
    if Config.Framework == 'ESX' or Config.Framework == 'OLD-ESX' then
        return MVS.Framework.Game.GetVehicleProperties(vehicle)
    elseif Config.Framework == 'QB' then
        return MVS.Framework.Functions.GetVehicleProperties(vehicle)
    end
end

MVS.Debug = function(str) 
    print("[\x1b[44maV_core\x1b[0m]: " .. str)
end

MVS.Game.SetVehicleProperties = function(vehicle, props) 
    if Config.Framework == 'ESX' or Config.Framework == 'OLD-ESX' then
        return MVS.Framework.Game.SetVehicleProperties(vehicle, props)
    elseif Config.Framework == 'QB' then
        return MVS.Framework.Functions.SetVehicleProperties(vehicle, props)
    end
end

MVS.Draw3DText = function(x, y, z, text, hideBox) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.40, 0.40)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)

    if not hideBox then 
        local factor = (string.len(text)) / 350

        DrawRect(_x,_y+0.0140, 0.025+ factor, 0.03, 0, 0, 0, 105)
    end
end

exports("getSharedObject", function() 
    return MVS
end)