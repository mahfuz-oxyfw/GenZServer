
AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= "gen-z_antivdm") then
        return
    end
end)


---@param num playerId
---@param target  securityCcode
RegisterNetEvent("gen-z_antivdm:warn", function(target, num)
    if target ~= "CODICEANTITRIGGERANTIVDM121683GDSAàòèPLàDS" then
        punishPlayer(source, "event")
        return
    end
    TriggerClientEvent("gen-z_antivdm:warn", num, target, WEBHOOK)

    createLog(false, source, num)
end)

---@param target  FakeArg
---@param case  FakeArg2
RegisterNetEvent("gen-z_antivdm:banPlayer", function(target, case)
    if target or case then
        punishPlayer(source, "event")
        return
    end

    local vdmCounter = Player(source).state.vdmCounter

    if vdmCounter and vdmCounter >= Config.VdmChance then
        punishPlayer(source, "vdm")
    end
end)

function log(description, webhook, color, content)
    PerformHttpRequest(webhook, function()
    end, "POST", json.encode({
        content = content or "",
        embeds = { {
            author = {
                name = "Anti Vdm",
                url = "https://www.youtube.com/watch?v=dQw4w9WgXcQ&ab_channel=RickAstley",
                icon_url = "https://cdn.discordapp.com/attachments/1075066216751841350/1139163637202817194/prop_base_bla33333ck_01prop_fruit_logo_a.png"
            },
            title = "Log Anti Vdm",
            description = description,
            color = color
        } }
    }), { ["Content-Type"] = "application/json" })
end

function createLog(event, target, attacker)
    local reason = ""

    local targetSteamid = GetPlayerIdentifierByType(target, "steam") or "N/A"
    local targetSteamURL = ("https://steamcommunity.com/profiles/%s"):format(targetSteamid) or "N/A"
    local targetLicense = GetPlayerIdentifierByType(target, "license") or "N/A"
    local targetDiscord = GetPlayerIdentifierByType(target, "discord") or "N/A"
    local targetXbl = GetPlayerIdentifierByType(target, "xbl") or "N/A"
    local targetLiveId = GetPlayerIdentifierByType(target, "live") or "N/A"
    local targetIp = GetPlayerIdentifierByType(target, "ip") or "N/A"
    local targetPing = GetPlayerPing(target) or "N/A"
    local targetCoords = GetEntityCoords(GetPlayerPed(target))

    if not event then
        local attackerSteamid = GetPlayerIdentifierByType(attacker, "steam") or "N/A"
        local attackerSteamURL = ("https://steamcommunity.com/profiles/%s"):format(attackerSteamid) or "N/A"
        local attackerLicense = GetPlayerIdentifierByType(attacker, "license") or "N/A"
        local attackerDiscord = GetPlayerIdentifierByType(attacker, "discord") or "N/A"
        local attackerXbl = GetPlayerIdentifierByType(attacker, "xbl") or "N/A"
        local attackerLiveId = GetPlayerIdentifierByType(attacker, "live") or "N/A"
        local attackerIp = GetPlayerIdentifierByType(attacker, "ip") or "N/A"
        local attackerPing = GetPlayerPing(attacker) or "N/A"
        local attackerCoords = GetEntityCoords(GetPlayerPed(attacker))

        reason =
            (
                "\n\n Vdm Fatto da:" ..
                "\n**ServerID:** %s" ..
                "\n**Steam URL:** %s" ..
                "\n**SteamID:** %s" ..
                "\n**Discord:** %s" ..
                "\n**License:** %s" ..
                "\n**Live:** %s" ..
                "\n**Xbox:** %s" ..
                "\n**IP:** %s" ..
                "\n**Ping:** %s" ..
                "\n**Coords:** %s" ..
                "\n\n **Al Player: **" ..
                "\n**ServerID:** %s" ..
                "\n**Steam URL:** %s" ..
                "\n**SteamID:** %s" ..
                "\n**Discord:** %s" ..
                "\n**License:** %s" ..
                "\n**Live:** %s" ..
                "\n**Xbox:** %s" ..
                "\n**IP:** %s" ..
                "\n**Ping:** %s" ..
                "\n**Coords:** %s" ..
                "\n\n**©🔪 | Ali#0070 - **%s"):format(
                attacker,
                attackerSteamURL,
                attackerSteamid,
                attackerDiscord,
                attackerLicense,
                attackerLiveId,
                attackerXbl,
                attackerIp,
                attackerPing,
                attackerCoords,
                target,
                targetSteamURL,
                targetSteamid,
                targetDiscord,
                targetLicense,
                targetLiveId,
                targetXbl,
                targetIp,
                targetPing,
                targetCoords,
                os.date("%x %X %p")
            )
    else
        reason =
            (
                "\n\n Il Player ha triggerato un trigger:" ..
                "\n**ServerID:** %s" ..
                "\n**Steam URL:** %s" ..
                "\n**SteamID:** %s" ..
                "\n**Discord:** %s" ..
                "\n**License:** %s" ..
                "\n**Live:** %s" ..
                "\n**Xbox:** %s" ..
                "\n**IP:** %s" ..
                "\n**Ping:** %s" ..
                "\n**Coords:** %s" ..
                "\n\n**©🔪 | Ali#0070 - **%s"):format(
                target,
                targetSteamURL,
                targetSteamid,
                targetDiscord,
                targetLicense,
                targetLiveId,
                targetXbl,
                targetIp,
                targetPing,
                targetCoords,
                os.date("%x %X %p")
            )
    end

    log(reason, WEBHOOK, 15548997, event and "@everyone" or "")
end
