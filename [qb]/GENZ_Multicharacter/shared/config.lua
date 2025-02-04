Config = {}
Config.IssueHelper = false -- [DEF. false] [BOOLEAN] Use that if you need help on discord. Gathers config data and non-sensitive data.
Config.Characters = {}
Config.Characters.Free = 2
Config.Characters.IdentifierType = "license"
Config.Debug = false

Config.CameraFOV = 20.0
Config.Music = {
    default = 'https://www.youtube.com/watch?v=FVmR4MnusIw',
    volume = .2,
}

Config.Commands = {
    ['logout'] = {
        use = true,
        commandName = 'logout',
    },
    ['setcharacterslots'] = {
        use = true,
        commandName = 'setcharacterslots'
    }, ['addcharacterslots'] = {
        use = true,
        commandName = 'addcharacterslots'
    },
}

Config.ForceAppereance = false -- [DEF. false] [IF NOT FALSE PLEASE USE STRING INSTAED OF TRUE] Check client/framework/framework_functions.lua Framework.SetSkin function for the compatible appearances. 

Config.Prefix = 'char' -- [DEF. 'char'] [STRING] What prefix should we use to gather user identifiers. (ESX Only since qbcore have implemented citizensIDs)

Config.UI = {
    ['settings'] = true,
    ['spawn_selector'] = true,
    ['discord'] = 'https://discord.gg/Kf8uDZfc3w', -- [STRING] Set your Discord URL to show that content or set it to false to disable discord icon.
    ['youtube'] = 'https://www.youtube.com/channel/UCHh_RjFQdSs6Pullj3jHwaQ/', -- [STRING] Set your Youtube URL to show that content or set it to false to disable youtube icon.
    ['website'] = 'https://genzrp.com/', -- [STRING] Set your Website URL to show that content or set it to false to disable website icon.
    ['delete_character'] = false,
}

Config.ServerLogo = 'https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/Add_a_heading_1.png'

Config.CanSwapLocationOnLogout = false -- [DEF. true] [BOOLEAN] Will user have access to swapping locations when using logout command.

Config.Buckets = {}
Config.Buckets.MulticharacterID = 1000 -- [DEF. 1000] [INT] What bucket identifier should be set while inside multicharacter.
Config.Buckets.PopulationEnabled = false -- [DEF. false] [BOOLEAN] Should population be enabled inside multicharacter?
Config.Buckets.DefaultId = 0 --[DEF. 0] [INT] What bucket identifier should be set when user will select character.

Config.Effects = {
    useEffects = true, -- [DEF. TRUE] [BOOLEAN] Set if you want the camera animation with the sound to be played when user selects his character
    useBucketSphere = true, -- [DEF. TRUE] [BOOLEAN] Set that if you want use animation with the white sphere
}

Config.SpawnCoords = {
    coords = vector3(-1053.18, -2765.9, 4.64), -- [COORDS] Set your desired coords for the users that will create their characters
    heading = 332.24 -- [INT] Heading of the given coords
}

Config.DefaultSettings = {}
Config.DefaultSettings['Filters'] = 'NG_filmic25' -- [STRING] Default values for filters
Config.DefaultSettings['Cameras'] = 'from_back' -- [STRING] Default values for camera

Config.UserInterface = 'START_BEFORE' -- [STRING] More information on docs:
Config.ClothingTimer = 15000 -- [INT] How much time does user have to wait to open skin menu after creating new character

Config.StarterItems = {
    {
        item = 'giftbox',
        amount = 1
    },
}

Config.CommandGroupAllowed = 'admin'

Config.SphereColor = {255, 255, 255}
Config.SphereIntensity = .95

--Algorithm Handlers
Config.AirCheckerDuration = 5000
Config.MaxAmountOfCoordsChecks = 5          -- [DEF. 5] [INT] Increasing that value may help with proper alocation of the player. Amount with max 0 may spawn your ped (if he's on some custom big interior) at wrong coords or even under the map. 
Config.MaxAmountOfHeadingChecks = 5         -- [DEF. 5] [INT] Increasing the amount will create better background of the player
Config.MaxAmountOfDistanceChecks = 5        -- [DEF. 5] [INT] Increasting the amount will help the algorithm to prevent the camera to spawn inside the wall
Config.AwaitShutdownLoadingScreen = false   -- [DEF. false] [BOOL] Allow to await loading screen to be manually shutdown.
Config.CustomInitialization = false         -- [DEF. false] [BOOL] If you will set that value to true you will have to manually handle opening up Multicharacter content. You can check out our documentation page for export/event

--[[
    DOCS: https://zsx-development.gitbook.io/docs/multicharacter/faq
]]