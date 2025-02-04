local WebHooks = {
    ["exploit"] = "https://discord.com/api/webhooks/1333400317420900373/AjtcmMJXhsu0V-Om-pPxxujxcBQdNLW-4kEGDLYgEIjjhCNMaHSdDRx6U6ZTanHJIO8V",
    ["triggered"] = "https://discord.com/api/webhooks/1333595844993351831/e462XlXGtROZ4EzwNVrBJR5hNoYs3yD6qTeLK1XU5hf5mlh0OQ_hGXGP8sgpUfyEv8Cx",
    ["report"] = "https://discord.com/api/webhooks/1333595923091034142/sUqgKrJbMt8Z9nknLBwxguv3dpx2GbFGHZnRxBpnv0PBbhb7B8YhRM8tQC2zS9SpbF71",
    ["transcript"] = "https://discord.com/api/webhooks/1333595999695798323/u6G-XxQ6IiaiV1mhqdxOUakt6GNjFCQBSBhjxFqkvVU1v98fkho-csQJCibE7y0rWve0",
    ["bans"] = "https://discord.com/api/webhooks/1333596068738498621/i4qbb13wd33TP928UBfP_eaxJWM2uweXbIvW68-y7MvOc5gPPoznJ302JwFPrHP53v1B",
    ["duty"] = "https://discord.com/api/webhooks/1333596140024758364/8A4ixtzoJqJBnOAVshzMR410jwiLMLz0I78b4bjXAOiLf0EE6ifipDO4MUhZ01Xj6XPz", -- when they player logs in on duty
    ["dutylog"] = "https://discord.com/api/webhooks/1333596220916105216/22ZkFD-WklHwtxp9ylEPYiouz89fxTbFCxFmHLBCAixvnpao-czkAVJkKQiLVCxtJnlE" -- when they player logs off duty
}

function SendLogs(source, type, message)
    local colorcode = 5763719
    if type == "exploit" then
        colorcode = 16711680
    end
    local description = ""
    if source == 0 then
        description = "**"..message.."**"
    else
        description = "**"..GetPlayerName(source).."** ("..source..")\n"..message
    end
    if type == "report" then
        description = "**"..GetPlayerName(source).."** ".. message
    end
    local embedData = {
        {
            ["title"] = "Admin Menu Logs" ,
            ["color"] = colorcode,
            ["footer"] = {
                ["text"] = os.date("%c"),
            },
            ["description"] = description,
            ["author"] = {
            ["name"] = 'Snipe Admin Menu Logs',
            },
        }
    }
    if type == "transcript" then
        embedData[1].title = "Chat Transcript (Closed by "..GetPlayerName(source)..")"
        embedData[1].footer.text = "Closed on "..os.date("%c")
        embedData[1].description = message
        description = ""
    end
    PerformHttpRequest(WebHooks[type], function(err, text, headers) end, 'POST', json.encode({ username = "Snipe Logs",embeds = embedData}), { ['Content-Type'] = 'application/json' })
end

function SendDutyLogs(source, isOnDuty, timeDiff)
    local colorcode = 5763719
    local webhook = WebHooks["duty"]
    if not isOnDuty then
        colorcode = 16711680
        webhook = WebHooks["dutylog"]
    end
    local name = GetPlayerName(source) or "Player Dropped"
    local status = isOnDuty and "On Duty" or "Off Duty"
    local embedData = {
        {
            ["title"] = "Snipe Duty Logs" ,
            ["color"] = colorcode,
            ["footer"] = {
                ["text"] = os.date("%c"),
            },
            -- ["description"] = description,
            ["fields"] = {
                {
                    ["name"] = "Player Info",
                    ["value"] = "```"..source.." | "..name.."```",
                    ["inline"] = false,
                },
                {
                    ["name"] = "Status",
                    ["value"] = "```"..status.."```",
                    ["inline"] = true,
                },

            },
            ["author"] = {
                ["name"] = 'Snipe Admin Menu Logs',
            },
        }
    }

    if not isOnDuty then
        local timeSpentString = ""
        if timeDiff >= 60 then
            local minutes = math.floor(timeDiff / 60)
            local seconds = timeDiff - (minutes * 60)
            timeSpentString = minutes.." minutes and "..seconds.." seconds"
        else
            timeSpentString = timeDiff.." seconds"
        end
        embedData[1].fields[3] = {
            ["name"] = "Time Spent",
            ["value"] = "```"..timeSpentString.."```",
            ["inline"] = true,
        }
    end

    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Snipe Logs",embeds = embedData}), { ['Content-Type'] = 'application/json' })
end


RegisterServerEvent("snipe-menu:server:sendLogs", function(type, message)
    local source = source
    if type == "exploit" then
        SendLogs(source, type, message)
    elseif type == "triggered" then
        SendLogs(source, type, message)
    end
end)