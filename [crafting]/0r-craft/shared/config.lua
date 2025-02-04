-- Configuration settings for the GPS system.
Config                  = {}

-- Debug print setting for displaying debug messages.
Config.DebugPrint       = true

-- Locale setting for language localization.
Config.Locale           = "en"

-- Do not CHANGE !!!
Config.FrameWork        = nil

-- ("esx_notify" | "qb_notify" | "custom_notify") -- > System to be used
Config.NotifyType       = "qb_notify"

-- ("ox_inventory" | "qb-inventory" | "custom") System to be used
Config.InventoryType    = "qb-inventory"

-- ("ox_target" | "qb-target") System to be used
Config.TargetType       = "qb-target"

Config.CraftableItems_1 = {
    [1] = {                                        -- Item name: weapon_assaultrifle, IT SHOULD BE UNIQUE !!!
        name = "weapon_aks74",              -- Item name: weapon_assaultrifle, PLEASE SET THE SAME !!!
        label = "Aks 74",                 -- Item label text
        propModel = "weapon_aks74",         -- Object prop model to be created, to show
        count = 1,                                 -- Production output
        duration = 1000000,                          -- Production time | milliseconds
        image = "weapons/weapon_aks74.png", -- Item image path
        --[[
            Ingredients images come from the folder ex: "public/images/items/*".
            If the item starts with "weapon_" it comes from the folder ex: "public/images/weapons/*".
        --]]
        ingredients = {          --Things needed to produce: [item_name] = needs
            rubber = 250,      -- Need 5x scrapmetal
            plastic = 300, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            metalscrap = 300,
            aluminum = 300,
            weapon_wrench = 1,
            steel = 300
        },
        price = 50000,            -- Price of item crafting (only bank for now)
    },
    [2] = {
        name = "weapon_wrench",
        label = "Wrench",
        propModel = "weapon_wrench",
        count = 1,
        duration = 5000,
        image = "items/weapon_wrench.png",
        ingredients = {
            steel = 60,
            rubber = 65
        },
        price = 100,
    },
    [3] = {                                        -- Item name: weapon_assaultrifle, IT SHOULD BE UNIQUE !!!
        name = "weapon_pistol_mk2",              -- Item name: weapon_assaultrifle, PLEASE SET THE SAME !!!
        label = "Pistol MK 2",                 -- Item label text
        propModel = "weapon_pistol_mk2",         -- Object prop model to be created, to show
        count = 1,                                 -- Production output
        duration = 600000,                          -- Production time | milliseconds
        image = "weapons/weapon_pistol_mk2.png", -- Item image path
        --[[
            Ingredients images come from the folder ex: "public/images/items/*".
            If the item starts with "weapon_" it comes from the folder ex: "public/images/weapons/*".
        --]]
        ingredients = {          --Things needed to produce: [item_name] = needs
            rubber = 150,      -- Need 5x scrapmetal
            plastic = 180, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            metalscrap = 120,
            aluminum = 160,
            weapon_wrench = 1,
            steel = 130
        },
        price = 5000,            -- Price of item crafting (only bank for now)
    },
    [4] = {
        name = "weapon_heavypistol",
        label = "Heavy Pistol",
        propModel = "weapon_heavypistol",
        count = 1,
        duration = 300000,
        image = "weapons/weapon_heavypistol.png",
        ingredients = {
            rubber = 150,      -- Need 5x scrapmetal
            plastic = 140, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            metalscrap = 160,
            aluminum = 180,
            weapon_wrench = 1,
            steel = 100
        },
        price = 6500,
    },
    [5] = {
        name = "armor",
        label = "Armor",
        propModel = "armor",
        count = 1,
        duration = 60000,
        image = "items/armor.png",
        ingredients = {
            rubber = 16,      -- Need 5x scrapmetal
            plastic = 54, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 33
        },
        price = 200,
    },
    [6] = {
        name = "advancedlockpick",
        label = "Advanced Lockpick",
        propModel = "advancedlockpick",
        count = 1,
        duration = 60000,
        image = "items/advancedlockpick.png",
        ingredients = {
            plastic = 54, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 33
        },
        price = 0,
    },
    [7] = {
        name = "handcuffs",
        label = "Handcuffs",
        propModel = "handcuffs",
        count = 1,
        duration = 60000,
        image = "items/handcuffs.png",
        ingredients = {
            rubber = 2,
            plastic = 50, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 50
        },
        price = 0,
    },
    [8] = {
        name = "drill",
        label = "Drill",
        propModel = "drill",
        count = 1,
        duration = 60000,
        image = "items/drill.png",
        ingredients = {
            rubber = 30,
            plastic = 50, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 50
        },
        price = 500,
    },
    [9] = {
        name = "cutter",
        label = "cutter",
        propModel = "cutter",
        count = 1,
        duration = 60000,
        image = "items/cutter.png",
        ingredients = {
            rubber = 20,
            glass = 100,
            plastic = 100, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 100
        },
        price = 600,
    },
    [10] = {
        name = "pistol_ammo",
        label = "pistol ammo",
        propModel = "pistol_ammo",
        count = 5,
        duration = 60000,
        image = "items/pistol_ammo.png",
        ingredients = {
            rubber = 5,
            glass = 20,
            plastic = 20, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 20,
            metalscrap = 20
        },
        price = 0,
    },
    [11] = {
        name = "smg_ammo",
        label = "SMG ammo",
        propModel = "smg_ammo",
        count = 5,
        duration = 60000,
        image = "items/smg_ammo.png",
        ingredients = {
            rubber = 10,
            glass = 20,
            plastic = 20, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 20,
            metalscrap = 20
        },
        price = 0,
    },
    [12] = {
        name = "rifle_ammo",
        label = "rifle ammo",
        propModel = "rifle_ammo",
        count = 5,
        duration = 60000,
        image = "items/rifle_ammo.png",
        ingredients = {
            rubber = 10,
            glass = 20,
            plastic = 20, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 20,
            metalscrap = 20
        },
        price = 0,
    },
    [13] = {
        name = "snp_ammo",
        label = "Sniper ammo",
        propModel = "snp_ammo",
        count = 5,
        duration = 60000,
        image = "items/snp_ammo.png",
        ingredients = {
            rubber = 20,
            glass = 20,
            plastic = 20, -- Need a weapon_hammer durable than 0.05, If the need is less than 1, it means durability
            aluminum = 20,
            metalscrap = 20
        },
        price = 0,
    },
    [14] = {
        name = "greenchip",
        label = "Green Chip",
        propModel = "greenchip",
        count = 5,
        duration = 60000,
        image = "items/greenchip.png",
        ingredients = {
            rubber = 200,
            metalscrap = 100
        },
        price = 100,
    },
    [15] = {
        name = "hackingtool",
        label = "Hacking Tool",
        propModel = "hackingtool",
        count = 5,
        duration = 60000,
        image = "items/hackingtool.png",
        ingredients = {
            rubber = 80,
            metalscrap = 100
        },
        price = 100,
    }
    
}

-- Enable a shop to access the crafting menu
Config.CraftingTables   = {
    [1] = {
        active = true,
        name = "Gen Z Crafting",
        coords = vector4(148.364838, 317.591217, 110.5, 204.09),
        cam = {
            coords = vector3(147.80, 318.8, 112.6),
            rotation = vector3(185.0, 180.0, 25.00),
        },
        distance = 2.0,
        blip = {
            active = false,
            name = "Gen Z Crafting",
            spriteId = 544,
            color = 2,
            scale = 0.7
        },
        object = {
            name = "gr_prop_gr_bench_02b",
            preview_spawn_coord = vector3(148.40, 317.75, 112.50),
            rotation = vector3(0.0, 0.0, 30.0),
        },
        -- "target" | "drawtext"
        interact_type = "target",
        -- Bench theme color: red|blue|green|orange
        color = "blue",
        -- You can choose different items for each bench.
        craftableItems = Config.CraftableItems_1,
        -- nil or "mechanic" or {mechanic = 1, police = 1},
        jobs = nil
    },
}

Config.WeaponAttachment = {
    Bones = {
        ["WAPClip"]     = { label = "Magazine", key = "clip", shift_left = -2, shift_top = 13 },
        ["Gun_GripR"]   = { label = "Skin", key = "skin", shift_left = 2, shift_top = 8 },
        ["WAPSupp"]     = { label = "Muzzle", key = "suppressor", shift_left = -5, shift_top = 8 },
        ["WAPFlshLasr"] = { label = "Tactical", key = "flashlight", shift_left = -8, shift_top = -12 },
        ["WAPScop"]     = { label = "Scope", key = "scope", shift_left = -1, shift_top = -10 },
        ["WAPGrip"]     = { label = "Grip", key = "grip", shift_left = -4, shift_top = 5 },
    },
}

Config.Weapons          = {
    ["weapon_pistol_mk2"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip",       hash = "COMPONENT_PISTOL_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip",       hash = "COMPONENT_PISTOL_CLIP_02" },
            { item = "at_flashlight",           type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "at_suppressor_light",     type = "suppressor", hash = "COMPONENT_AT_PI_SUPP_02" },
            { item = "at_skin_luxe",            type = "skin",       hash = "COMPONENT_PISTOL_VARMOD_LUXE" }
        }
    },
    ["weapon_combatpistol"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip",       hash = "COMPONENT_COMBATPISTOL_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip",       hash = "COMPONENT_COMBATPISTOL_CLIP_02" },
            { item = "at_flashlight",           type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "at_suppressor_light",     type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "at_skin_luxe",            type = "skin",       hash = "COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_appistol"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip",       hash = "COMPONENT_APPISTOL_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip",       hash = "COMPONENT_APPISTOL_CLIP_02" },
            { item = "at_flashlight",           type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "at_suppressor_light",     type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "at_skin_luxe",            type = "skin",       hash = "COMPONENT_APPISTOL_VARMOD_LUXE" }
        }
    },
    ["weapon_pistol50"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip",       hash = "COMPONENT_PISTOL50_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip",       hash = "COMPONENT_PISTOL50_CLIP_02" },
            { item = "at_flashlight",           type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "at_suppressor_heavy",     type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_skin_luxe",            type = "skin",       hash = "COMPONENT_PISTOL50_VARMOD_LUXE" }
        }
    },
    ["weapon_snspistol"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip", hash = "COMPONENT_SNSPISTOL_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip", hash = "COMPONENT_SNSPISTOL_CLIP_02" },
            { item = "at_skin_luxe",            type = "skin", hash = "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_heavypistol"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip",       hash = "COMPONENT_HEAVYPISTOL_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip",       hash = "COMPONENT_HEAVYPISTOL_CLIP_02" },
            { item = "at_flashlight",           type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "at_suppressor_light",     type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "at_skin_luxe",            type = "skin",       hash = "COMPONENT_HEAVYPISTOL_VARMOD_LUXE" }
        }
    },
    ["weapon_vintagepistol"] = {
        components = {
            { item = "at_clip_pistol",          type = "clip",       hash = "COMPONENT_VINTAGEPISTOL_CLIP_01" },
            { item = "at_clip_extended_pistol", type = "clip",       hash = "COMPONENT_VINTAGEPISTOL_CLIP_02" },
            { item = "at_suppressor_light",     type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" }
        }
    },
    ["weapon_machinepistol"] = {
        components = {
            { item = "at_clip_smg",          type = "clip",       hash = "COMPONENT_MACHINEPISTOL_CLIP_01" },
            { item = "at_clip_extended_smg", type = "clip",       hash = "COMPONENT_MACHINEPISTOL_CLIP_02" },
            { item = "at_clip_drum_smg",     type = "clip",       hash = "COMPONENT_MACHINEPISTOL_CLIP_03" },
            { item = "at_suppressor_light",  type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" }
        }
    },
    ["weapon_smg"] = {
        components = {
            { item = "at_clip_smg",          type = "clip",       hash = "COMPONENT_SMG_CLIP_01" },
            { item = "at_clip_extended_smg", type = "clip",       hash = "COMPONENT_SMG_CLIP_02" },
            { item = "at_clip_drum_smg",     type = "clip",       hash = "COMPONENT_SMG_CLIP_03" },
            { item = "at_flashlight",        type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_macro",       type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO_02" },
            { item = "at_suppressor_light",  type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "at_skin_luxe",         type = "skin",       hash = "COMPONENT_SMG_VARMOD_LUXE" }
        }
    },
    ["weapon_assaultsmg"] = {
        components = {
            { item = "at_clip_smg",          type = "clip",       hash = "COMPONENT_ASSAULTSMG_CLIP_01" },
            { item = "at_clip_extended_smg", type = "clip",       hash = "COMPONENT_ASSAULTSMG_CLIP_02" },
            { item = "at_flashlight",        type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_macro",       type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO" },
            { item = "at_suppressor_heavy",  type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_skin_luxe",         type = "skin",       hash = "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_microsmg"] = {
        components = {
            { item = "at_clip_smg",          type = "clip",       hash = "COMPONENT_MICROSMG_CLIP_01" },
            { item = "at_clip_extended_smg", type = "clip",       hash = "COMPONENT_MICROSMG_CLIP_02" },
            { item = "at_flashlight",        type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "at_scope_macro",       type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO" },
            { item = "at_suppressor_heavy",  type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_skin_luxe",         type = "skin",       hash = "COMPONENT_MICROSMG_VARMOD_LUXE" }
        }
    },
    ["weapon_minismg"] = {
        components = {
            { item = "at_clip_smg",          type = "clip", hash = "COMPONENT_MINISMG_CLIP_01" },
            { item = "at_clip_extended_smg", type = "clip", hash = "COMPONENT_MINISMG_CLIP_02" }
        }
    },
    ["weapon_combatpdw"] = {
        components = {
            { item = "at_clip_smg",          type = "clip",       hash = "COMPONENT_COMBATPDW_CLIP_01" },
            { item = "at_clip_extended_smg", type = "clip",       hash = "COMPONENT_COMBATPDW_CLIP_02" },
            { item = "at_clip_drum_smg",     type = "clip",       hash = "COMPONENT_COMBATPDW_CLIP_03" },
            { item = "at_flashlight",        type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_grip",              type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "at_scope_small",       type = "scope",      hash = "COMPONENT_AT_SCOPE_SMALL" }
        }
    },
    ["weapon_pumpshotgun"] = {
        components = {
            { item = "at_flashlight",       type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_suppressor_light", type = "suppressor", hash = "COMPONENT_AT_SR_SUPP" },
            { item = "at_skin_luxe",        type = "skin",       hash = "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_sawnoffshotgun"] = {
        components = {
            { item = "at_skin_luxe", type = "skin", hash = "COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE" }
        }
    },
    ["weapon_assaultshotgun"] = {
        components = {
            { item = "at_clip_shotgun",          type = "clip",       hash = "COMPONENT_ASSAULTSHOTGUN_CLIP_01" },
            { item = "at_clip_extended_shotgun", type = "clip",       hash = "COMPONENT_ASSAULTSHOTGUN_CLIP_02" },
            { item = "at_flashlight",            type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_suppressor_heavy",      type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "at_grip",                  type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" }
        }
    },
    ["weapon_bullpupshotgun"] = {
        components = {
            { item = "at_flashlight",       type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_suppressor_heavy", type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_grip",             type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" }
        }
    },
    ["weapon_heavyshotgun"] = {
        components = {
            { item = "at_clip_shotgun",          type = "clip",       hash = "COMPONENT_HEAVYSHOTGUN_CLIP_01" },
            { item = "at_clip_extended_shotgun", type = "clip",       hash = "COMPONENT_HEAVYSHOTGUN_CLIP_02" },
            { item = "at_clip_drum_shotgun",     type = "clip",       hash = "COMPONENT_HEAVYSHOTGUN_CLIP_03" },
            { item = "at_flashlight",            type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_suppressor_heavy",      type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_grip",                  type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" }
        }
    },
    ["weapon_assaultrifle"] = {
        components = {
            { item = "at_clip_rifle",          type = "clip",       hash = "COMPONENT_ASSAULTRIFLE_CLIP_01" },
            { item = "at_clip_extended_rifle", type = "clip",       hash = "COMPONENT_ASSAULTRIFLE_CLIP_02" },
            { item = "at_clip_drum_rifle",     type = "clip",       hash = "COMPONENT_ASSAULTRIFLE_CLIP_03" },
            { item = "at_flashlight",          type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_macro",         type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO" },
            { item = "at_suppressor_heavy",    type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_grip",                type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "at_skin_luxe",           type = "skin",       hash = "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_carbinerifle"] = {
        components = {
            { item = "at_clip_rifle",          type = "clip",       hash = "COMPONENT_CARBINERIFLE_CLIP_01" },
            { item = "at_clip_extended_rifle", type = "clip",       hash = "COMPONENT_CARBINERIFLE_CLIP_02" },
            { item = "at_clip_drum_rifle",     type = "clip",       hash = "COMPONENT_CARBINERIFLE_CLIP_03" },
            { item = "at_flashlight",          type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_medium",        type = "scope",      hash = "COMPONENT_AT_SCOPE_MEDIUM" },
            { item = "at_suppressor_heavy",    type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "at_grip",                type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "at_skin_luxe",           type = "skin",       hash = "COMPONENT_CARBINERIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_advancedrifle"] = {
        components = {
            { item = "at_clip_rifle",          type = "clip",       hash = "COMPONENT_ADVANCEDRIFLE_CLIP_01" },
            { item = "at_clip_extended_rifle", type = "clip",       hash = "COMPONENT_ADVANCEDRIFLE_CLIP_02" },
            { item = "at_flashlight",          type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_small",         type = "scope",      hash = "COMPONENT_AT_SCOPE_SMALL" },
            { item = "at_suppressor_heavy",    type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "at_skin_luxe",           type = "skin",       hash = "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_specialcarbine"] = {
        components = {
            { item = "at_clip_rifle",          type = "clip",       hash = "COMPONENT_SPECIALCARBINE_CLIP_01" },
            { item = "at_clip_extended_rifle", type = "clip",       hash = "COMPONENT_SPECIALCARBINE_CLIP_02" },
            { item = "at_clip_drum_rifle",     type = "clip",       hash = "COMPONENT_SPECIALCARBINE_CLIP_03" },
            { item = "at_flashlight",          type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_medium",        type = "scope",      hash = "COMPONENT_AT_SCOPE_MEDIUM" },
            { item = "at_suppressor_heavy",    type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_grip",                type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "at_skin_luxe",           type = "skin",       hash = "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_bullpuprifle"] = {
        components = {
            { item = "at_clip_rifle",          type = "clip",       hash = "COMPONENT_BULLPUPRIFLE_CLIP_01" },
            { item = "at_clip_extended_rifle", type = "clip",       hash = "COMPONENT_BULLPUPRIFLE_CLIP_02" },
            { item = "at_flashlight",          type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_small",         type = "scope",      hash = "COMPONENT_AT_SCOPE_SMALL" },
            { item = "at_suppressor_heavy",    type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "at_grip",                type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "at_skin_luxe",           type = "skin",       hash = "COMPONENT_BULLPUPRIFLE_VARMOD_LOW" }
        }
    },
    ["weapon_compactrifle"] = {
        components = {
            { item = "at_clip_rifle",          type = "clip", hash = "COMPONENT_COMPACTRIFLE_CLIP_01" },
            { item = "at_clip_extended_rifle", type = "clip", hash = "COMPONENT_COMPACTRIFLE_CLIP_02" },
            { item = "at_clip_drum_rifle",     type = "clip", hash = "COMPONENT_COMPACTRIFLE_CLIP_03" }
        }
    },
    ["weapon_mg"] = {
        components = {
            { item = "at_clip_extended_mg", type = "clip",  hash = "COMPONENT_MG_CLIP_02" },
            { item = "at_scope_small",      type = "scope", hash = "COMPONENT_AT_SCOPE_SMALL_02" },
            { item = "at_skin_luxe",        type = "skin",  hash = "COMPONENT_MG_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_combatmg"] = {
        components = {
            { item = "at_clip_extended_mg", type = "clip",  hash = "COMPONENT_COMBATMG_CLIP_01" },
            { item = "at_clip_extended_mg", type = "clip",  hash = "COMPONENT_COMBATMG_CLIP_02" },
            { item = "at_scope_medium",     type = "scope", hash = "COMPONENT_AT_SCOPE_MEDIUM" },
            { item = "at_grip",             type = "grip",  hash = "COMPONENT_AT_AR_AFGRIP" },
        }
    },
    ["weapon_gusenberg"] = {
        components = {
            { item = "at_clip_extended_mg", type = "clip", hash = "COMPONENT_GUSENBERG_CLIP_01" },
            { item = "at_clip_extended_mg", type = "clip", hash = "COMPONENT_GUSENBERG_CLIP_02" },
        }
    },
    ["weapon_sniperrifle"] = {
        components = {
            { item = "at_scope_large",      type = "scope",      hash = "COMPONENT_AT_SCOPE_LARGE" },
            { item = "at_scope_advanced",   type = "scope",      hash = "COMPONENT_AT_SCOPE_MAX" },
            { item = "at_suppressor_heavy", type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "at_skin_luxe",        type = "skin",       hash = "COMPONENT_SNIPERRIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_heavysniper"] = {
        components = {
            { item = "at_scope_large",    type = "scope", hash = "COMPONENT_AT_SCOPE_LARGE" },
            { item = "at_scope_advanced", type = "scope", hash = "COMPONENT_AT_SCOPE_MAX" }
        }
    },
    ["weapon_marksmanrifle"] = {
        components = {
            { item = "at_clip_sniper",          type = "clip",       hash = "COMPONENT_MARKSMANRIFLE_CLIP_01" },
            { item = "at_clip_extended_sniper", type = "clip",       hash = "COMPONENT_MARKSMANRIFLE_CLIP_02" },
            { item = "at_flashlight",           type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "at_scope_large",          type = "scope",      hash = "COMPONENT_AT_SCOPE_LARGE_MK2" },
            { item = "at_suppressor_heavy",     type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "at_grip",                 type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "at_skin_luxe",            type = "skin",       hash = "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE" }
        }
    }
}

Config.Weapons_QB       = {
    ["weapon_pistol_mk2"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_PISTOL_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_PISTOL_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_PI_SUPP_02" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_PISTOL_VARMOD_LUXE" }
        }
    },
    ["weapon_combatpistol"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_COMBATPISTOL_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_COMBATPISTOL_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_appistol"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_APPISTOL_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_APPISTOL_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_APPISTOL_VARMOD_LUXE" }
        }
    },
    ["weapon_pistol50"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_PISTOL50_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_PISTOL50_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_PISTOL50_VARMOD_LUXE" }
        }
    },
    ["weapon_snspistol"] = {
        components = {
            { item = "clip_attachment",         type = "clip", hash = "COMPONENT_SNSPISTOL_CLIP_01" },
            { item = "clip_attachment",         type = "clip", hash = "COMPONENT_SNSPISTOL_CLIP_02" },
            { item = "luxuryfinish_attachment", type = "skin", hash = "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_heavypistol"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_HEAVYPISTOL_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_HEAVYPISTOL_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_HEAVYPISTOL_VARMOD_LUXE" }
        }
    },
    ["weapon_vintagepistol"] = {
        components = {
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_VINTAGEPISTOL_CLIP_01" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_VINTAGEPISTOL_CLIP_02" },
            { item = "suppressor_attachment", type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" }
        }
    },
    ["weapon_machinepistol"] = {
        components = {
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_MACHINEPISTOL_CLIP_01" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_MACHINEPISTOL_CLIP_02" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_MACHINEPISTOL_CLIP_03" },
            { item = "suppressor_attachment", type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" }
        }
    },
    ["weapon_smg"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_SMG_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_SMG_CLIP_02" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_SMG_CLIP_03" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "smallscope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO_02" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_PI_SUPP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_SMG_VARMOD_LUXE" }
        }
    },
    ["weapon_assaultsmg"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ASSAULTSMG_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ASSAULTSMG_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "smallscope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_microsmg"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_MICROSMG_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_MICROSMG_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_PI_FLSH" },
            { item = "smallscope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_MICROSMG_VARMOD_LUXE" }
        }
    },
    ["weapon_minismg"] = {
        components = {
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_MINISMG_CLIP_01" },
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_MINISMG_CLIP_02" }
        }
    },
    ["weapon_combatpdw"] = {
        components = {
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_COMBATPDW_CLIP_01" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_COMBATPDW_CLIP_02" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_COMBATPDW_CLIP_03" },
            { item = "flashlight_attachment", type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "grip_attachment",       type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "smallscope_attachment", type = "scope",      hash = "COMPONENT_AT_SCOPE_SMALL" }
        }
    },
    ["weapon_pumpshotgun"] = {
        components = {
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_SR_SUPP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_sawnoffshotgun"] = {
        components = {
            { item = "luxuryfinish_attachment", type = "skin", hash = "COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE" }
        }
    },
    ["weapon_assaultshotgun"] = {
        components = {
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_ASSAULTSHOTGUN_CLIP_01" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_ASSAULTSHOTGUN_CLIP_02" },
            { item = "flashlight_attachment", type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "suppressor_attachment", type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "grip_attachment",       type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" }
        }
    },
    ["weapon_bullpupshotgun"] = {
        components = {
            { item = "flashlight_attachment", type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "suppressor_attachment", type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "grip_attachment",       type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" }
        }
    },
    ["weapon_heavyshotgun"] = {
        components = {
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_HEAVYSHOTGUN_CLIP_01" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_HEAVYSHOTGUN_CLIP_02" },
            { item = "clip_attachment",       type = "clip",       hash = "COMPONENT_HEAVYSHOTGUN_CLIP_03" },
            { item = "flashlight_attachment", type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "suppressor_attachment", type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "grip_attachment",       type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" }
        }
    },
    ["weapon_assaultrifle"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ASSAULTRIFLE_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ASSAULTRIFLE_CLIP_02" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ASSAULTRIFLE_CLIP_03" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "smallscope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_MACRO" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "grip_attachment",         type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_carbinerifle"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_CARBINERIFLE_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_CARBINERIFLE_CLIP_02" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_CARBINERIFLE_CLIP_03" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "medscope_attachment",     type = "scope",      hash = "COMPONENT_AT_SCOPE_MEDIUM" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "grip_attachment",         type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_CARBINERIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_advancedrifle"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ADVANCEDRIFLE_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_ADVANCEDRIFLE_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "smallscope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_SMALL" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_specialcarbine"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_SPECIALCARBINE_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_SPECIALCARBINE_CLIP_02" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_SPECIALCARBINE_CLIP_03" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "medscope_attachment",     type = "scope",      hash = "COMPONENT_AT_SCOPE_MEDIUM" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "grip_attachment",         type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_bullpuprifle"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_BULLPUPRIFLE_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_BULLPUPRIFLE_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "smallscope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_SMALL" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "grip_attachment",         type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_BULLPUPRIFLE_VARMOD_LOW" }
        }
    },
    ["weapon_compactrifle"] = {
        components = {
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_COMPACTRIFLE_CLIP_01" },
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_COMPACTRIFLE_CLIP_02" },
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_COMPACTRIFLE_CLIP_03" }
        }
    },
    ["weapon_mg"] = {
        components = {
            { item = "clip_attachment",         type = "clip",  hash = "COMPONENT_MG_CLIP_02" },
            { item = "smallscope_attachment",   type = "scope", hash = "COMPONENT_AT_SCOPE_SMALL_02" },
            { item = "luxuryfinish_attachment", type = "skin",  hash = "COMPONENT_MG_VARMOD_LOWRIDER" }
        }
    },
    ["weapon_combatmg"] = {
        components = {
            { item = "clip_attachment",     type = "clip",  hash = "COMPONENT_COMBATMG_CLIP_01" },
            { item = "clip_attachment",     type = "clip",  hash = "COMPONENT_COMBATMG_CLIP_02" },
            { item = "medscope_attachment", type = "scope", hash = "COMPONENT_AT_SCOPE_MEDIUM" },
            { item = "grip_attachment",     type = "grip",  hash = "COMPONENT_AT_AR_AFGRIP" },
        }
    },
    ["weapon_gusenberg"] = {
        components = {
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_GUSENBERG_CLIP_01" },
            { item = "clip_attachment", type = "clip", hash = "COMPONENT_GUSENBERG_CLIP_02" },
        }
    },
    ["weapon_sniperrifle"] = {
        components = {
            { item = "largescope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_LARGE" },
            { item = "advscope_attachment",     type = "scope",      hash = "COMPONENT_AT_SCOPE_MAX" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP_02" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_SNIPERRIFLE_VARMOD_LUXE" }
        }
    },
    ["weapon_heavysniper"] = {
        components = {
            { item = "largescope_attachment", type = "scope", hash = "COMPONENT_AT_SCOPE_LARGE" },
            { item = "advscope_attachment",   type = "scope", hash = "COMPONENT_AT_SCOPE_MAX" }
        }
    },
    ["weapon_marksmanrifle"] = {
        components = {
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_MARKSMANRIFLE_CLIP_01" },
            { item = "clip_attachment",         type = "clip",       hash = "COMPONENT_MARKSMANRIFLE_CLIP_02" },
            { item = "flashlight_attachment",   type = "flashlight", hash = "COMPONENT_AT_AR_FLSH" },
            { item = "largescope_attachment",   type = "scope",      hash = "COMPONENT_AT_SCOPE_LARGE_MK2" },
            { item = "suppressor_attachment",   type = "suppressor", hash = "COMPONENT_AT_AR_SUPP" },
            { item = "grip_attachment",         type = "grip",       hash = "COMPONENT_AT_AR_AFGRIP" },
            { item = "luxuryfinish_attachment", type = "skin",       hash = "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE" }
        }
    }
}
