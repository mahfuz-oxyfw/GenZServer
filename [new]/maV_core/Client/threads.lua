Citizen.CreateThread(function() 
    while MVS.Framework == nil do
        if Config.Framework == 'ESX' or Config.Framework == 'OLD-ESX' then
            MVS.Framework = exports["es_extended"]:getSharedObject()
        elseif Config.Framework == 'OLD-ESX' then
            TriggerEvent('esx:getSharedObject', function(obj) MVS.Framework = obj end)
        elseif Config.Framework == 'QB' then
            MVS.Framework = exports["qb-core"]:GetCoreObject()
            
        end

        Citizen.Wait(1)
    end
end)