Config = Config or {}

Config.ReloadTime = math.random(3000, 6000)

Config.DurabilityBlockedWeapons = {
    "weapon_stungun",
    "weapon_nightstick",
    "weapon_flashlight",
    "weapon_unarmed",
}

Config.Throwables = {
    "ball",
    "bzgas",
    "flare",
    "grenade",
    "molotov",
    "pipebomb",
    "proxmine",
    "smokegrenade",
    "snowball",
    "stickybomb",
}

Config.DurabilityMultiplier = {
    -- Melee
    -- ['weapon_unarmed'] 				 = 0.05,
    ['weapon_dagger']                = 0.05,
    ['weapon_bat']                   = 0.05,
    ['weapon_bottle']                = 0.05,
    ['weapon_crowbar']               = 0.05,
    ['weapon_candycane']             = 0.05,
    -- ['weapon_flashlight'] 			 = 0.15,
    ['weapon_golfclub']              = 0.05,
    ['weapon_hammer']                = 0.05,
    ['weapon_hatchet']               = 0.05,
    ['weapon_knuckle']               = 0.05,
    ['weapon_knife']                 = 0.05,
    ['weapon_machete']               = 0.05,
    ['weapon_switchblade']           = 0.05,
    -- ['weapon_nightstick'] 			 = 0.05,
    ['weapon_wrench']                = 0.05,
    ['weapon_battleaxe']             = 0.05,
    ['weapon_poolcue']               = 0.05,
    ['weapon_briefcase']             = 0.05,
    ['weapon_briefcase_02']          = 0.05,
    ['weapon_garbagebag']            = 0.05,
    ['weapon_handcuffs']             = 0.05,
    ['weapon_bread']                 = 0.05,
    ['weapon_stone_hatchet']         = 0.05,

    -- Handguns
    ['weapon_pistol']                = 0.05,
    ['weapon_pistol_mk2']            = 0.01,
    ['weapon_combatpistol']          = 0.05,
    ['weapon_appistol']              = 0.05,
    -- ['weapon_stungun'] 				 = 0.05,
    -- ['weapon_stungun_mp'] 				 = 0.05,
    ['weapon_pistol50']              = 0.05,
    ['weapon_snspistol']             = 0.05,
    ['weapon_heavypistol']           = 0.05,
    ['weapon_vintagepistol']         = 0.05,
    ['weapon_flaregun']              = 0.05,
    ['weapon_marksmanpistol']        = 0.05,
    ['weapon_revolver']              = 0.05,
    ['weapon_revolver_mk2']          = 0.05,
    ['weapon_doubleaction']          = 0.05,
    ['weapon_snspistol_mk2']         = 0.05,
    ['weapon_raypistol']             = 0.05,
    ['weapon_ceramicpistol']         = 0.05,
    ['weapon_navyrevolver']          = 0.05,
    ['weapon_gadgetpistol']          = 0.05,
    ['weapon_pistolxm3']             = 0.05,

    -- Submachine Guns
    ['weapon_microsmg']              = 0.05,
    ['weapon_smg']                   = 0.05,
    ['weapon_smg_mk2']               = 0.01,
    ['weapon_assaultsmg']            = 0.05,
    ['weapon_combatpdw']             = 0.05,
    ['weapon_machinepistol']         = 0.05,
    ['weapon_minismg']               = 0.05,
    ['weapon_raycarbine']            = 0.05,

    -- Shotguns
    ['weapon_pumpshotgun']           = 0.15,
    ['weapon_sawnoffshotgun']        = 0.15,
    ['weapon_assaultshotgun']        = 0.15,
    ['weapon_bullpupshotgun']        = 0.15,
    ['weapon_musket']                = 0.15,
    ['weapon_heavyshotgun']          = 0.15,
    ['weapon_dbshotgun']             = 0.15,
    ['weapon_autoshotgun']           = 0.15,
    ['weapon_pumpshotgun_mk2']       = 0.15,
    ['weapon_combatshotgun']         = 0.15,

    -- Assault Rifles
    ['weapon_assaultrifle']          = 0.15,
    ['weapon_assaultrifle_mk2']      = 0.15,
    ['weapon_carbinerifle']          = 0.15,
    ['weapon_carbinerifle_mk2']      = 0.01,
    ['weapon_advancedrifle']         = 0.15,
    ['weapon_specialcarbine']        = 0.15,
    ['weapon_bullpuprifle']          = 0.15,
    ['weapon_compactrifle']          = 0.15,
    ['weapon_specialcarbine_mk2']    = 0.15,
    ['weapon_bullpuprifle_mk2']      = 0.15,
    ['weapon_militaryrifle']         = 0.15,
    ['weapon_heavyrifle']            = 0.15,

    -- Light Machine Guns
    ['weapon_mg']                    = 0.15,
    ['weapon_combatmg']              = 0.15,
    ['weapon_gusenberg']             = 0.15,
    ['weapon_combatmg_mk2']          = 0.15,

    -- Sniper Rifles
    ['weapon_sniperrifle']           = 0.15,
    ['weapon_heavysniper']           = 0.15,
    ['weapon_marksmanrifle']         = 0.15,
    ['weapon_remotesniper']          = 0.15,
    ['weapon_heavysniper_mk2']       = 0.15,
    ['weapon_marksmanrifle_mk2']     = 0.15,

    -- Heavy Weapons
    ['weapon_rpg']                   = 0.15,
    ['weapon_grenadelauncher']       = 0.15,
    ['weapon_grenadelauncher_smoke'] = 0.15,
    ['weapon_emplauncher']           = 0.15,
    ['weapon_minigun']               = 0.15,
    ['weapon_firework']              = 0.15,
    ['weapon_railgun']               = 0.15,
    ['weapon_hominglauncher']        = 0.15,
    ['weapon_compactlauncher']       = 0.15,
    ['weapon_rayminigun']            = 0.15,
    ['weapon_railgunxm3']            = 0.15,

    -- Throwables
    ['weapon_grenade']               = 0.15,
    ['weapon_bzgas']                 = 0.15,
    ['weapon_molotov']               = 0.15,
    ['weapon_stickybomb']            = 0.15,
    ['weapon_proxmine']              = 0.15,
    ['weapon_snowball']              = 0.15,
    ['weapon_pipebomb']              = 0.15,
    ['weapon_ball']                  = 0.15,
    ['weapon_smokegrenade']          = 0.15,
    ['weapon_flare']                 = 0.15,

    -- Miscellaneous
    ['weapon_petrolcan']             = 0.01,
    ['weapon_fireextinguisher']      = 0.15,
    ['weapon_hazardcan']             = 0.15,
    ['weapon_fertilizercan']         = 0.15,

    --Custom Weapons
    ['weapon_ak47'] 			= 0.08,
    ['weapon_de'] 	            = 0.08,
    ['weapon_fnx45'] 			= 0.08,
    ['weapon_glock17'] 		    = 0.08,
    ['weapon_m4'] 			    = 0.08,
    ['weapon_hk416'] 			= 0.08,
    ['weapon_mk14'] 			= 0.08,
    ['weapon_m110'] 			= 0.08,
    ['weapon_huntingrifle'] 	= 0.20,
    ['weapon_ar15'] 			= 0.08,
    ['weapon_m9'] 	            = 0.08,
    ['weapon_m70'] 			    = 0.08,
    ['weapon_m1911'] 		    = 0.08,
    ['weapon_mac10'] 			= 0.08,
    ['weapon_uzi']              = 0.08,
    ['weapon_mp9'] 	            = 0.08,
    ['weapon_mossberg'] 		= 0.08,
    ['weapon_remington'] 		= 0.08,
    ['weapon_scarh'] 			= 0.08,
    ['weapon_shiv']             = 0.08,
    ['weapon_katana']           = 0.08,
    ['weapon_sledgehammer'] 	= 0.08,
    ['weapon_mp5'] 			    = 0.08,
    ['weapon_glock18c'] 		= 0.08,
    ['weapon_glock22'] 			= 0.08,
    ['weapon_aks74'] 			= 0.08,
    ['weapon_ak74'] 			= 0.08, 
}
-- Weapons Damage; modifier = 1.0 is default. Go below 1.0 and the damage will be reduced, go above 1.0 and damage will become higher.
-- Set disableCriticalHits to true to disable. Set it to false to enable.

Config.WeaponsDamage = {
    
    [`WEAPON_COMBATPISTOL`] = {model = `WEAPON_COMBATPISTOL`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_APPISTOL`] = {model = `WEAPON_APPISTOL`, modifier = 0.3, disableCriticalHits = true},
    [`WEAPON_PISTOL_MK2`] = {model = `WEAPON_PISTOL_MK2`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_PISTOLXM3`] = {model = `WEAPON_PISTOLXM3`, modifier = 0.4, disableCriticalHits = true}, 
    [`WEAPON_HEAVYPISTOL`] = {model = `WEAPON_HEAVYPISTOL`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_HK416`] = {model = `WEAPON_HK416`, modifier = 0.8, disableCriticalHits = true},
    [`WEAPON_M4`] = {model = `WEAPON_M4`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_AK74`] = {model = `WEAPON_AK74`, modifier = 0.8, disableCriticalHits = true},
    [`WEAPON_AR15`] = {model = `WEAPON_AR15`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_MP5`] = {model = `WEAPON_MP5`, modifier = 0.2, disableCriticalHits = true},
    [`WEAPON_MAC10`] = {model = `WEAPON_MAC10`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_UZI`] = {model = `WEAPON_UZI`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_ASSAULTSMG`] = {model = `WEAPON_ASSAULTSMG`, modifier = 0.7, disableCriticalHits = true},
    [`WEAPON_MACHINEPISTOL`] = {model = `WEAPON_MACHINEPISTOL`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_GLOCK17`] = {model = `WEAPON_GLOCK17`, modifier = 0.48, disableCriticalHits = true},
    [`WEAPON_GLOCK18C`] = {model = `WEAPON_GLOCK18C`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_DE`] = {model = `WEAPON_DE`, modifier = 0.3, disableCriticalHits = true},
    [`WEAPON_FNX45`] = {model = `WEAPON_FNX45`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_UNARMED`] = {model = `WEAPON_UNARMED`, modifier = 0.2, disableCriticalHits = true},
    [`WEAPON_UNARMED`] = {model = `WEAPON_UNARMED`, modifier = 0.2, disableCriticalHits = true},
    [`WEAPON_SNSPISTOL`] = {model = `WEAPON_SNSPISTOL`, modifier = 0.3, disableCriticalHits = true},
    [`WEAPON_MINISMG`] = {model = `WEAPON_MINISMG`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_PISTOL50`] = {model = `WEAPON_PISTOL50`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_M70`] = {model = `WEAPON_M70`, modifier = 0.1, disableCriticalHits = true},
    [`weapon_aks74`] = {model = `weapon_aks74`, modifier = 0.1, disableCriticalHits = true},
    
    
    
    [`WEAPON_UNARMED`] = {model = `WEAPON_UNARMED`, modifier = 0.2, disableCriticalHits = true},
    [`WEAPON_FLASHLIGHT`] = {model = `WEAPON_NIGHTSTICK`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_KNIFE`] = {model = `WEAPON_KNIFE`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_KNUCKLE`] = {model = `WEAPON_KNUCKLE`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_NIGHTSTICK`] = {model = `WEAPON_NIGHTSTICK`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_HAMMER`] = {model = `WEAPON_HAMMER`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_BAT`] = {model = `WEAPON_BAT`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_GOLFCLUB`] = {model = `WEAPON_GOLFCLUB`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_CROWBAR`] = {model = `WEAPON_CROWBAR`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_BOTTLE`] = {model = `WEAPON_BOTTLE`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_DAGGER`] = {model = `WEAPON_DAGGER`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_HATCHET`] = {model = `WEAPON_HATCHET`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_MACHETE`] = {model = `WEAPON_MACHETE`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_SWITCHBLADE`] = {model = `WEAPON_SWITCHBLADE`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_PROXMINE`] = {model = `WEAPON_PROXMINE`, modifier = 1.5, disableCriticalHits = true},
    [`WEAPON_BZGAS`] = {model = `WEAPON_BZGAS`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_SMOKEGRENADE`] = {model = `WEAPON_SMOKEGRENADE`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MOLOTOV`] = {model = `WEAPON_MOLOTOV`, modifier = 1.0, disableCriticalHits = true},
    [`WEAPON_REVOLVER`] = {model = `WEAPON_REVOLVER`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_POOLCUE`] = {model = `WEAPON_POOLCUE`, modifier = 0.4, disableCriticalHits = true},
    [`WEAPON_PIPEWRENCH`] = {model = `WEAPON_PIPEWRENCH`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_PISTOL`] = {model = `WEAPON_PISTOL`, modifier = 0.5, disableCriticalHits = true},
    
    
    [`WEAPON_PISTOL50`] = {model = `WEAPON_PISTOL50`, modifier = 0.1, disableCriticalHits = true},
    
    [`WEAPON_VINTAGEPISTOL`] = {model = `WEAPON_VINTAGEPISTOL`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_FLAREGUN`] = {model = `WEAPON_FLAREGUN`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MARKSMANPISTOL`] = {model = `WEAPON_MARKSMANPISTOL`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_MICROSMG`] = {model = `WEAPON_MICROSMG`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_MINISMG`] = {model = `WEAPON_MINISMG`, modifier = 0.5, disableCriticalHits = true},
    [`WEAPON_SMG`] = {model = `WEAPON_SMG`, modifier = 0.6, disableCriticalHits = true},
    [`WEAPON_SMG_MK2`] = {model = `WEAPON_SMG_MK2`, modifier = 0.1, disableCriticalHits = true},
    
    [`WEAPON_MG`] = {model = `WEAPON_MG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATMG`] = {model = `WEAPON_COMBATMG`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATMG_MK2`] = {model = `WEAPON_COMBATMG_MK2`, modifier = 0.1, disableCriticalHits = true},
    [`WEAPON_COMBATPDW`] = {model = `WEAPON_COMBATPDW`, modifier = 0.5, disableCriticalHits = true},
    [`weapon_pumpshotgun`] = {model = `weapon_pumpshotgun`, modifier = 0.4, disableCriticalHits = true},
    [`weapon_pumpshotgun_mk2`] = {model = `weapon_pumpshotgun_mk2`, modifier = 0.4, disableCriticalHits = true},
    [`weapon_dbshotgun`] = {model = `weapon_dbshotgun`, modifier = 0.4, disableCriticalHits = true},




    -------------------------------------------------temp----------------------------------------------------------------
    [`weapon_assaultrifle`] = {model = `weapon_assaultrifle`, modifier = 0.38, disableCriticalHits = true},
    -------------------------------------------------temp----------------------------------------------------------------



    
    [`weapon_carbinerifle_mk2`] = {model = `weapon_carbinerifle_mk2`, modifier = 0.6, disableCriticalHits = true},
    [`weapon_compactrifle`] = {model = `weapon_compactrifle`, modifier = 0.5, disableCriticalHits = true},
    [`weapon_doubleaction`] = {model = `weapon_doubleaction`, modifier = 0.5, disableCriticalHits = true},
    
}

Config.WeaponRepairPoints = {
    [1] = {
        coords = vector3(891.44, -474.57, 30.23),
        IsRepairing = false,
        RepairingData = {},
    }
}

Config.WeaponRepairCosts = {
    ["pistol"] = 1000,
    ["smg"] = 2000,
    ["mg"] = 3000,
    ["rifle"] = 3000,
    ["sniper"] = 10000,
    ["shotgun"] = 2000
}

WeaponAttachments = {
    -- PISTOLS
    ['WEAPON_PISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_01',
            item = 'pistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL_CLIP_02',
            item = 'pistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL_VARMOD_LUXE',
            item = 'pistol_luxuryfinish',
        },
    },
    ['WEAPON_COMBATPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_01',
            item = 'combatpistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPISTOL_CLIP_02',
            item = 'combatpistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_COMBATPISTOL_VARMOD_LOWRIDER',
            item = 'combatpistol_luxuryfinish',
        },
    },
    ['WEAPON_APPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_01',
            item = 'appistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_APPISTOL_CLIP_02',
            item = 'appistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_APPISTOL_VARMOD_LUXE',
            item = 'appistol_luxuryfinish',
        },
    },
    ['WEAPON_PISTOL50'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_01',
            item = 'pistol50_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_PISTOL50_CLIP_02',
            item = 'pistol50_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PISTOL50_VARMOD_LUXE',
            item = 'pistol50_luxuryfinish',
        },
    },
    ['WEAPON_REVOLVER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_REVOLVER_CLIP_01',
            item = 'revolver_defaultclip',
        },
        ['vipvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_GOON',
            item = 'revolver_vipvariant',
            type = 'skin',
        },
        ['bodyguardvariant'] = {
            component = 'COMPONENT_REVOLVER_VARMOD_BOSS',
            item = 'revolver_bodyguardvariant',
            type = 'skin',
        },
    },
    ['WEAPON_SNSPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_01',
            item = 'snspistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SNSPISTOL_CLIP_02',
            item = 'snspistol_extendedclip',
            type = 'clip',
        },
        ['grip'] = {
            component = 'COMPONENT_SNSPISTOL_VARMOD_LOWRIDER',
            item = 'snspistol_grip',
        },
    },
    ['WEAPON_HEAVYPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_01',
            item = 'heavypistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYPISTOL_CLIP_02',
            item = 'heavypistol_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_HEAVYPISTOL_VARMOD_LUXE',
            item = 'heavypistol_grip',
        },
    },
    ['WEAPON_VINTAGEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_01',
            item = 'vintagepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_VINTAGEPISTOL_CLIP_02',
            item = 'vintagepistol_extendedclip',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
            type = 'silencer',
        },
    },
    -- SMG'S
    ['WEAPON_MICROSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_01',
            item = 'microsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MICROSMG_CLIP_02',
            item = 'microsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_PI_FLSH',
            item = 'pistol_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MICROSMG_VARMOD_LUXE',
            item = 'microsmg_luxuryfinish',
        },
    },
    ['WEAPON_SMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SMG_CLIP_01',
            item = 'smg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SMG_CLIP_02',
            item = 'smg_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SMG_CLIP_03',
            item = 'smg_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO_02',
            item = 'smg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SMG_VARMOD_LUXE',
            item = 'smg_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_01',
            item = 'assaultsmg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSMG_CLIP_02',
            item = 'assaultsmg_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER',
            item = 'assaultsmg_luxuryfinish',
        },
    },
    ['WEAPON_MINISMG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_01',
            item = 'minismg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MINISMG_CLIP_02',
            item = 'minismg_extendedclip',
            type = 'clip',
        },
    },
    ['WEAPON_MACHINEPISTOL'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_01',
            item = 'machinepistol_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_02',
            item = 'machinepistol_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_MACHINEPISTOL_CLIP_03',
            item = 'machinepistol_drum',
            type = 'clip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_PI_SUPP',
            item = 'pistol_suppressor',
        },
    },
    ['WEAPON_COMBATPDW'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_01',
            item = 'combatpdw_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_02',
            item = 'combatpdw_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMBATPDW_CLIP_03',
            item = 'combatpdw_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'combatpdw_grip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
    },
    -- SHOTGUNS
    ['WEAPON_PUMPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_SR_SUPP',
            item = 'shotgun_suppressor',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER',
            item = 'pumpshotgun_luxuryfinish',
        },
    },
    ['WEAPON_SAWNOFFSHOTGUN'] = {
        ['luxuryfinish'] = {
            component = 'COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE',
            item = 'sawnoffshotgun_luxuryfinish',
        },
    },
    ['WEAPON_ASSAULTSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_01',
            item = 'assaultshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTSHOTGUN_CLIP_02',
            item = 'assaultshotgun_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_BULLPUPSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_HEAVYSHOTGUN'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_01',
            item = 'heavyshotgun_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_02',
            item = 'heavyshotgun_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_HEAVYSHOTGUN_CLIP_03',
            item = 'heavyshotgun_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
    },
    ['WEAPON_COMBATSHOTGUN'] = {
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
    },
    -- RIFLES
    ['WEAPON_ASSAULTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_01',
            item = 'assaultrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_02',
            item = 'assaultrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_ASSAULTRIFLE_CLIP_03',
            item = 'assaultrifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MACRO',
            item = 'microsmg_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ASSAULTRIFLE_VARMOD_LUXE',
            item = 'assaultrifle_luxuryfinish',
        },
    },
    ['WEAPON_CARBINERIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_01',
            item = 'carbinerifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_02',
            item = 'carbinerifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_CARBINERIFLE_CLIP_03',
            item = 'carbinerifle_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_CARBINERIFLE_VARMOD_LUXE',
            item = 'carbinerifle_luxuryfinish',
        },
    },
    ['WEAPON_ADVANCEDRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_01',
            item = 'advancedrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_CLIP_02',
            item = 'advancedrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE',
            item = 'advancedrifle_luxuryfinish',
        },
    },
    ['WEAPON_SPECIALCARBINE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_01',
            item = 'specialcarbine_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_02',
            item = 'specialcarbine_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_SPECIALCARBINE_CLIP_03',
            item = 'specialcarbine_drum',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER',
            item = 'specialcarbine_luxuryfinish',
        },
    },
    ['WEAPON_BULLPUPRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_BULLPUPRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_SMALL',
            item = 'combatpdw_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    ['WEAPON_COMPACTRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_01',
            item = 'compactrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_02',
            item = 'compactrifle_extendedclip',
            type = 'clip',
        },
        ['drum'] = {
            component = 'COMPONENT_COMPACTRIFLE_CLIP_03',
            item = 'compactrifle_drum',
            type = 'clip',
        },
    },
    ['WEAPON_HEAVYRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_01',
            item = 'bullpuprifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_HEAVYRIFLE_CLIP_02',
            item = 'bullpuprifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_MEDIUM',
            item = 'carbinerifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_BULLPUPRIFLE_VARMOD_LOW',
            item = 'bullpuprifle_luxuryfinish',
        },
    },
    -- MACHINE GUNS
    ['WEAPON_GUSENBERG'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_01',
            item = 'gusenberg_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_GUSENBERG_CLIP_02',
            item = 'gusenberg_extendedclip',
            type = 'clip',
        },
    },
    -- LAUNCHERS
    ['WEAPON_EMPLAUNCHER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_EMPLAUNCHER_CLIP_01',
            item = 'emplauncher_defaultclip',
            type = 'clip',
        },
    },
    -- SNIPERS
    ['WEAPON_SNIPERRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_SNIPERRIFLE_CLIP_01',
            item = 'sniperrifle_defaultclip',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP_02',
            item = 'smg_suppressor',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
        ['grip'] = {
            component = 'COMPONENT_SNIPERRIFLE_VARMOD_LUXE',
            item = 'sniper_grip',
        },
    },
    ['WEAPON_HEAVYSNIPER'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_HEAVYSNIPER_CLIP_01',
            item = 'heavysniper_defaultclip',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE',
            item = 'sniper_scope',
            type = 'scope',
        },
        ['advancedscope'] = {
            component = 'COMPONENT_AT_SCOPE_MAX',
            item = 'snipermax_scope',
            type = 'scope',
        },
    },
    ['WEAPON_MARKSMANRIFLE'] = {
        ['defaultclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_01',
            item = 'marksmanrifle_defaultclip',
            type = 'clip',
        },
        ['extendedclip'] = {
            component = 'COMPONENT_MARKSMANRIFLE_CLIP_02',
            item = 'marksmanrifle_extendedclip',
            type = 'clip',
        },
        ['flashlight'] = {
            component = 'COMPONENT_AT_AR_FLSH',
            item = 'rifle_flashlight',
        },
        ['scope'] = {
            component = 'COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM',
            item = 'marksmanrifle_scope',
        },
        ['suppressor'] = {
            component = 'COMPONENT_AT_AR_SUPP',
            item = 'rifle_suppressor',
        },
        ['grip'] = {
            component = 'COMPONENT_AT_AR_AFGRIP',
            item = 'rifle_grip',
        },
        ['luxuryfinish'] = {
            component = 'COMPONENT_MARKSMANRIFLE_VARMOD_LUXE',
            item = 'marksmanrifle_luxuryfinish',
        },
    },
}

local function getConfigWeaponAttachments(weapon)
    return WeaponAttachments[weapon]
end

exports('getConfigWeaponAttachments', getConfigWeaponAttachments)
