QBCore = exports['qb-core']:GetCoreObject()

-- Function to send the crypto log to Discord
function sendCryptoToDiscord(message)
    local time = os.date("*t")

    local embed = {
        {
            ["color"] = Config.LogColour, -- Set color for embed
            ["author"] = {
                ["icon_url"] = Config.AvatarURL, -- Set avatar
                ["name"] = Config.ServerName, -- Set server name
            },
            ["title"] = "**Crypto Balance Log**", -- Title for embed
            ["description"] = message, -- Message with crypto data
            ["footer"] = {
                ["text"] = time.year.. '/' ..time.month..'/'..time.day..' '.. time.hour.. ':'..time.min, -- Log time
            },
        }
    }
    
    PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = Config.ServerName, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

-- Command to trigger manual crypto logging (Admin only)
QBCore.Commands.Add("logcrypto", "Log top crypto balances to Discord", {}, false, function()
    TriggerEvent("cryptoLogger:getTopCryptoBalances")
end, 'admin')

-- Event to get top players' crypto balances
-- RegisterNetEvent("cryptoLogger:getTopCryptoBalances", function()
--     local topCryptoPlayers = MySQL.Sync.fetchAll("SELECT `name`, `money`, `citizenid`, JSON_VALUE(money, '$.crypto') AS `crypto_balance` FROM `players` WHERE JSON_VALUE(money, '$.crypto') > 0 ORDER BY `crypto_balance` DESC LIMIT ?", {Config.TopPlayersLimit})
--     local cryptoLogMessage = ''

--     if #topCryptoPlayers > 0 then
--         for i, player in ipairs(topCryptoPlayers) do
--             cryptoLogMessage = cryptoLogMessage .. "**" .. i .. ".** " .. player["name"] .. " (CitizenID: " .. player["citizenid"] .. ") - Crypto: $" .. player["crypto_balance"] .. "\n"
--         end
--     else
--         cryptoLogMessage = "No players with crypto balance."
--     end

--     sendCryptoToDiscord(cryptoLogMessage)
-- end)

-- Event to get top players' crypto balances
RegisterNetEvent("cryptoLogger:getTopCryptoBalances", function()
    local topLimit = Config.TopPlayersLimit or 40 -- Default to 40 if not defined
    -- Ensure the order is by highest crypto first, treating crypto_balance as a number
    local query = [[
        SELECT `name`, `money`, `citizenid`, 
        CAST(JSON_VALUE(money, '$.crypto') AS DECIMAL(10,2)) AS `crypto_balance` 
        FROM `players` 
        WHERE JSON_VALUE(money, '$.crypto') > 0 
        ORDER BY `crypto_balance` DESC 
        LIMIT ]] .. tonumber(topLimit)
    
    local topCryptoPlayers = MySQL.Sync.fetchAll(query)

    local cryptoLogMessage = ''

    if #topCryptoPlayers > 0 then
        for i, player in ipairs(topCryptoPlayers) do
            cryptoLogMessage = cryptoLogMessage .. "**" .. i .. ".** " .. player["name"] .. " (CitizenID: " .. player["citizenid"] .. ") - Crypto: $" .. player["crypto_balance"] .. "\n"
        end
    else
        cryptoLogMessage = "No players with crypto balance."
    end

    sendCryptoToDiscord(cryptoLogMessage)
end)



-- Auto-log crypto balances at regular intervals
Citizen.CreateThread(function()
    while true do
        if Config.AutoLogCrypto then
            TriggerEvent("cryptoLogger:getTopCryptoBalances")
            Citizen.Wait(Config.LogInterval * 60000) -- Wait for the specified interval (in minutes)
        else
            Citizen.Wait(60000) -- Check every minute if auto-log is enabled
        end
    end
end)
