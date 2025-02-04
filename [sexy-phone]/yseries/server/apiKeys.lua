ApiKeys = {
    Image = GetConvar("yseriesApiKeyImage", "PUT_YOUR_API_KEY_HERE___OR___SET_IT_IN_SERVER.CFG"),
    Video = GetConvar("yseriesApiKeyVideo", "PUT_YOUR_API_KEY_HERE___OR___SET_IT_IN_SERVER.CFG"),
    Audio = GetConvar("yseriesApiKeyAudio", "PUT_YOUR_API_KEY_HERE___OR___SET_IT_IN_SERVER.CFG")
}

-------------------------------------
-------------------------------------
--- IMPORTANT: READ FULLY -----------
------- IMPORTANT: READ FULLY -------
----------- IMPORTANT: READ FULLY ---
-------------------------------------
-------------------------------------
-- The API keys for the different upload methods. (Discord, Fivemanage, Fivemerr, Custom).
-- For Fivemanage it will be the API key generated from your account.
-- !! How to generate Fivemanage Key: https://youtu.be/GL7HBlA9i4s !!


------------ RECOMENNDED ------------
-- If you want to keep your apiKeys in `server.cfg` you can set them like this:
-- set yseriesApiKeyImage "REPLACE_WITH_YOUR_API_KEY"
-- set yseriesApiKeyVideo "REPLACE_WITH_YOUR_API_KEY"
-- set yseriesApiKeyAudio "REPLACE_WITH_YOUR_API_KEY"
-------------------------------------
------- IMPORTANT: READ FULLY -------
-------------------------------------

LogsWebhooks = { -- The Discord webhook that will be used to send the posts to the Discord channel.
    ['instashots'] = 'https://discord.com/api/webhooks/1312164130471411860/nLsliw-t_NUXgWDcyVb4hkhTgnKn8ryjzO3mG2SuD2SfVcLju7oPvBnyXfn5LBuSa0v-',
    ['y'] = 'https://discord.com/api/webhooks/1312164203062235217/3KFx26q88cdxMpe1XbPOp03STsXNJ6Y0M__LsYgd0l8gcYIAMSwgwk6RI8yl5-syT4xj',
    ['ypay'] = 'https://discord.com/api/webhooks/1312164243906367539/yuVDdqZrmNE1LywfYObXEFtQfeEdWSaPpWNY7bSjb_Iu93YIiIOWF3mj6JOgEMsdz4es',
    ['ybuy'] = 'https://discord.com/api/webhooks/1312164297643917382/NTPehAgVEDauNXBYihiez8foobNSazQQAZbsMOCjG2zVqmQx6gm_gKLL8ng4ftNXh0wW',
    ['companies'] = 'https://discord.com/api/webhooks/1312164303981383802/lp4yj-GJExoywofw1l-T7MNtoLaVcc2097Ha-JfivYuXhQeBpluEZvo72KKiF7JwpNMM',
}
