Config = {}

-- NPC configuration for the heist
Config.NPC = {
    model = "s_m_m_highsec_01", -- NPC model
    coords = vector3(471.32, -2806.62, 6.05), -- NPC location
    heading = 90, -- NPC direction
}
-- Laptop for hacking
Config.Laptop = {
    coords = vector3(571.75, -3123.81, 18.77), -- Laptop location
    heading = 359, -- Laptop direction
    interactText = "Hack the laptop" -- Interaction text
}
-- Aircraft carrier location
Config.Carrier = {
    coords = vector3(3061.11, -4697.36, 15.26), -- Aircraft carrier location
    blip = {
        sprite = 455, -- Aircraft carrier icon
        color = 5, -- Marker color
        scale = 1.0 -- Marker size
    }
}

-- Text to display when interacting
Config.InteractText = "Talk to the agent"

Config.HackSettings = {
    numBlocks = 5, -- Number of blocks for the mini-game
    time = 6 -- Time in seconds for the mini-game
}

-- Notification texts
Config.Notifications = {
    AlreadyStarted = "You have already started the heist.",
    StartHeist = "Go to the computer to hack and get the location of the aircraft carrier.",
    HackSuccess = "You successfully hacked the computer! The location of the aircraft carrier is marked on the map.",
    HackFailed = "You failed to hack the computer!",
    HackSuccess2 = "You successfully hacked the computer! You got something valuable!",
}

Config.Soldiers = {
    {
        model = "s_m_y_marine_01",
        coords = vector3(3087.76, -4704.84, 30.26), -- Using vector3 here
        heading = 180.0,
        weapon = "WEAPON_COMBATPISTOL"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3087.6, -4722.72, 30.26),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3086.32, -4691.44, 27.25),
        heading = 180.0,
        weapon = "WEAPON_RIFLE"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3087.6, -4722.72, 30.26),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3089.88, -4747.54, 15.26),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3058.27, -4777.02, 15.26),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3093.27, -4714.12, 15.26),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3095.66, -4701.93, 12.24),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3076.54, -4779.58, 6.08),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3076.54, -4779.58, 6.08),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3070.59, -4683.3, 10.74),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
    {
        model = "s_m_y_marine_01",
        coords = vector3(3042.94, -4636.05, 6.08),
        heading = 180.0,
        weapon = "WEAPON_SMG"
    },
}

-- Lootbox settings
Config.LootBoxes = {
    { coords = vector3(3073.53, -4820.85, 14.51), interactText = "Collect the box" },
    { coords = vector3(3119.46, -4775.01, 14.83), interactText = "Collect the box" },
    { coords = vector3(3078.37, -4738.08, 6.0), interactText = "Collect the box" },
    { coords = vector3(3076.9, -4798.35, 6.17), interactText = "Collect the box" },
    { coords = vector3(3062.93, -4697.89, 5.9), interactText = "Collect the box" },
    { coords = vector3(3039.51, -4665.18, 5.74), interactText = "Collect the box" },
    { coords = vector3(3094.93, -4719.99, 14.88), interactText = "Collect the box" },
    { coords = vector3(3050.53, -4710.89, 6.16), interactText = "Collect the box" },
}
-- Settings for the animation when collecting a box
Config.LootAnimation = {
    dict = "mini@repair",
    name = "fixing_a_ped",
    duration = 5000 -- Duration in milliseconds
}

-- List of items for lootbox
Config.LootItems = {
    { name = "pistol_ammo", amount = 10 },
    { name = "smg_ammo", amount = 16 },
    { name = "armor", amount = 2 },
    { name = "pistol_defaultclip", amount = 2 },
    { name = "pistol_extendedclip", amount = 2 },
    { name = "weapon_appistol", amount = 1 },
    { name = "handcuffs", amount = 5 },
    { name = "weapon_combatpistol", amount = 1 },
    { name = "weapon_bzgas", amount = 1 },
}

Config.CarrierLaptop = {
    coords = vector3(3080.03, -4690.36, 27.25), -- Replace with the coordinates of the laptop
    heading = 285,
    interactText = "Hack the aircraft carrier's laptop"
}

Config.HackSettings2 = {
    time = 30, -- Hacking time in seconds
    gridSize = 5, -- Size of the grid (can be between 5 and 10)
    incorrectBlocks = 3 -- Number of incorrect blocks to appear
}
