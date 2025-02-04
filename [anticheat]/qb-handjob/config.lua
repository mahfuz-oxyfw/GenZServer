

Config = {}

----------------------
-- Log Discord Setup --
----------------------

-- Webhook of your channel (tutorial: https://support.discord.com/hc/en-us/articles/228383668-Intro-to-Webhooks)
Config.WebHook = "https://discord.com/api/webhooks/1327072696936169482/vwihgIJ6bPrFl8rr7dTX7obqUtZ-IQVlR_kDzVnJeM40r_pC8qlx3ibH-6NdnoZxl-y-"

-- What information do you want the log to include? (Refer to README.md for more information)
-- Only choose 1: "standard", "short" or "full" (In this case, it will log only money data)
Config.LogMessageType = "short" -- Logging type for money data

-- Avatar for your log (optional)
Config.AvatarURL = ""

-- Name for your log (optional)
Config.ServerName = "Gen-Z"

-- Title for your log (optional)
Config.LogTitle = "Top Richest Players"

-- Color for your log (optional). Default: green
Config.LogColour = 65352

----------------------
-- money Log Settings --
----------------------

-- Do you want the log to be automatically sent after a certain time?
-- By default, you need to use an admin command to trigger the event
Config.SendLogByTime = {
    enable = true, -- Enable/disable automatic logging
    time = 60, -- How long do you want the log to be sent (default: 60 minutes)
}

-- Do you want only top richest players to be logged?
-- Or do you want to send the money log for all players in the database?
-- For larger servers, logging all players could cause lag, so logging only the top is recommended.
Config.OnlyTopRichest = {
    enable = true, -- Enable/disable this feature
    top = 40, -- How many top money holders you want to log? (Default: Top 40 richest money players)
}

