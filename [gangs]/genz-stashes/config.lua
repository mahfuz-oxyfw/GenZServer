
Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true'

Config.PoliceOpen = true -- Can Police open all stashes

Config.Stashes = {
    ["gangstash"] = {
        canAnyoneOpen = false,
        stashName = "The Yakuza",
        coords = vector3(1400.04, 1139.71, 114.34), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "theyakuza",
        job = "",
        cid = {""},  
        stashSize = 1250000,
        stashSlots = 125, 
    },

    ["gangstash2"] = {
        canAnyoneOpen = false,
        stashName = "gangstash2",
        coords = vector3(-84.79, 1004.96, 234.39), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "whitemilitia",
        job = "",
        cid = {""},  
        stashSize = 1250000,
        stashSlots = 125, 
    },
    
    ["gangstash3"] = {
        canAnyoneOpen = false,
        stashName = "The Continental",
        coords = vector3(-68.46, 825.93, 231.34), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "thecontinental",
        job = "",
        cid = {""},  
        stashSize = 1250000,
        stashSlots = 125, 
    },

    ["gangstash4"] = {
        canAnyoneOpen = false,
        stashName = "The Fallen BS",
        coords = vector3(1397.04, -598.52, 77.87), 
        requirecid = false,
        jobrequired = false,
        gangrequired = true,
        gang = "thefallenbs",
        job = "",
        cid = {""},  
        stashSize = 1250000,
        stashSlots = 125, 
    },

--------------------------------------Membership--------------------------------------------------------
    ["membership1"] = {
        canAnyoneOpen = false,
        stashName = "MD ToTo69",
        coords = vector3(-77.83, -811.11, 243.39), 
        requirecid = true,
        jobrequired = false,
        gangrequired = false,
        gang = "",
        job = "",
        cid = {"NNS84430"},  
        stashSize = 500000,
        stashSlots = 100, 
    },

    ["membership2"] = {
        canAnyoneOpen = false,
        stashName = "Ar Rony",
        coords = vector3(-907.62, -430.75, 94.06), 
        requirecid = true,
        jobrequired = false,
        gangrequired = false,
        gang = "",
        job = "",
        cid = {"QWZ90200"},  
        stashSize = 500000,
        stashSlots = 100, 
    },

    ["membership3"] = {
        canAnyoneOpen = false,
        stashName = "Ragnar",
        coords = vector3(1350.53, -535.14, 77.27), 
        requirecid = true,
        jobrequired = false,
        gangrequired = false,
        gang = "",
        job = "",
        cid = {"QUU29101"},  
        stashSize = 500000,
        stashSlots = 100, 
    },
    
    ["membership4"] = {
        canAnyoneOpen = false,
        stashName = "MUKUL MIRZA",
        coords = vector3(951.10, -677.74, 61.83), 
        requirecid = true,
        jobrequired = false,
        gangrequired = false,
        gang = "",
        job = "",
        cid = {"WQH88271"},  
        stashSize = 500000,
        stashSlots = 100, 
    },










}
