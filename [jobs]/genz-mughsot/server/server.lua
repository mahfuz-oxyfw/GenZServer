local QBCore = exports[Config.Core]:GetCoreObject()
local ScreenShotHook = 'https://discord.com/api/webhooks/1329472490648633396/or2ArnWj5rVx5apxonipAeyrvAhhlQabQcUZYT2ZRaKjUdK7QWcqIfz_BWjsSzjZDRlf'
local MugShotHook = 'https://discord.com/api/webhooks/1329471207766229073/BgNTA1UwexsBYIlZ0eb1cSqD9-X-8_V6-MFm1DlSOF93uV3Hegn8RNCjbFPSyfOmTUmI'

QBCore.Functions.CreateCallback("genz-mughsot:server:GetWebhook", function(source, cb)
    cb(ScreenShotHook)
end)

RegisterNetEvent("genz-mughsot:server:takemugshot", function(targetid)
    local TargetId = tonumber(targetid)
    local SourceId = source
    local Target = QBCore.Functions.GetPlayer(TargetId)
    local Source = QBCore.Functions.GetPlayer(SourceId)
    if Target and Source then 
        if TargetId ~= SourceId then
            local sourceCoords = GetEntityCoords(GetPlayerPed(SourceId))
            local targetCoords = GetEntityCoords(GetPlayerPed(TargetId))
            local distance = #(sourceCoords - targetCoords)
            if distance <= Config.Distance then
                TriggerClientEvent("genz-mughsot:client:takemugshot", TargetId, SourceId)
            else
                TriggerClientEvent('QBCore:Notify', SourceId, "The Player is too far away to take a mugshot.", 'error')
            end
        else 
            TriggerClientEvent('QBCore:Notify', SourceId, "You can't take a mugshot of yourself.", 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', SourceId, "Invalid Player ID.", 'error')
    end
end)




RegisterNetEvent("genz-mughsot:server:MugLog", function(officer, MugShot)
    local Suspect = QBCore.Functions.GetPlayer(source)
    local Police = QBCore.Functions.GetPlayer(officer)
    local suspectName = Suspect.PlayerData.charinfo.firstname .. ' ' .. Suspect.PlayerData.charinfo.lastname
    local suspectCitizenID = Suspect.PlayerData.citizenid
    local suspectDOB = Suspect.PlayerData.charinfo.birthdate
    local policeName = Police.PlayerData.charinfo.firstname .. ' ' .. Police.PlayerData.charinfo.lastname   
    local embedData = {
        {
            ['title'] = Config.LogTitle,
            ['color'] = 16761035,
            ['footer'] = {
                ['text'] = os.date( "!%a %b %d, %H:%M", os.time() + 6 * 60 * 60 ),
            },
            ['fields'] = {
                {['name'] = "Suspect:", ['value'] = "```" .. suspectName .. "```", ['inline'] = false},
                {['name'] = "Date Of Birth:", ['value'] = "```" .. suspectDOB .. "```", ['inline'] = false},
                {['name'] = "Citizen ID:", ['value'] = "```" .. suspectCitizenID .. "```", ['inline'] = false},
                {['name'] = "Officer:", ['value'] = "```" .. policeName .. "```", ['inline'] = false},
            },
            ['image'] = {
                ['url'] = MugShot,
            },
            ['author'] = {
                ['name'] = Config.LogName,
                ['icon_url'] = Config.LogIcon,
            },
        }
    }
    PerformHttpRequest(MugShotHook, function() end, 'POST', json.encode({ username = Config.LogName, embeds = embedData}), { ['Content-Type'] = 'application/json' })
end)
