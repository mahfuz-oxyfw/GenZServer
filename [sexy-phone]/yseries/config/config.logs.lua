Config = Config or {}

Config.Logs = {}         -- The webhook that will be used to send the posts to the discord channel.
Config.Logs.Timeout = 60 -- The amount of time in seconds that the logs will be queued before being sent to the discord channel.
Config.Logs.Webhooks = {
    -- Logs webhooks are moved in - `server\apiKeys.lua`
}

Config.Logs.Avatars = { -- The avatar for the bot that will be used to send the posts to the discord channel.
    ['instashots'] = 'https://media.discordapp.net/attachments/1295957041923227648/1296687349580824629/Add_a_heading_1.png?ex=674b3973&is=6749e7f3&hm=ce873d2585463cb760821deb90aa3b7b94d599eebd942dab7585ce3057585992&=&format=webp&quality=lossless&width=675&height=675',
    ['y'] = 'https://media.discordapp.net/attachments/1295957041923227648/1296687349580824629/Add_a_heading_1.png?ex=674b3973&is=6749e7f3&hm=ce873d2585463cb760821deb90aa3b7b94d599eebd942dab7585ce3057585992&=&format=webp&quality=lossless&width=675&height=675',
    ['ypay'] = 'https://media.discordapp.net/attachments/1295957041923227648/1296687349580824629/Add_a_heading_1.png?ex=674b3973&is=6749e7f3&hm=ce873d2585463cb760821deb90aa3b7b94d599eebd942dab7585ce3057585992&=&format=webp&quality=lossless&width=675&height=675',
    ['ybuy'] = 'https://media.discordapp.net/attachments/1295957041923227648/1296687349580824629/Add_a_heading_1.png?ex=674b3973&is=6749e7f3&hm=ce873d2585463cb760821deb90aa3b7b94d599eebd942dab7585ce3057585992&=&format=webp&quality=lossless&width=675&height=675',
    ['companies'] = 'https://media.discordapp.net/attachments/1295957041923227648/1296687349580824629/Add_a_heading_1.png?ex=674b3973&is=6749e7f3&hm=ce873d2585463cb760821deb90aa3b7b94d599eebd942dab7585ce3057585992&=&format=webp&quality=lossless&width=675&height=675',
}

Config.Logs.Colors = { -- https://www.spycolor.com/
    ['instashots'] = 15884387,
    ['companies'] = 1940464,
    ['default'] = 14423100,
    ['lightgreen'] = 65309,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['white'] = 16777215,
    ['pink'] = 16761035,
    ['ybuy'] = 15020857,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['ypay'] = 431319,
    ['y'] = 1940464,
    ['black'] = 0,
}
