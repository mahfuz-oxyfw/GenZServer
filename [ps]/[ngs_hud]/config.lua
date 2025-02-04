Config = {}

Config.StressChance = 0.02 -- Default: 5% -- Percentage Stress Chance When Shooting (0-1)
Config.MinimumStress = 65 -- Minimum Stress Level For Screen Shaking
Config.MinimumSpeedUnbuckled = 250 -- Going Over This Speed Will Cause Stress
Config.MinimumSpeed = 280 -- Going Over This Speed Will Cause Stress
Config.DisablePoliceStress = false -- If true will disable stress for people with the police job
Config.BankNotify = true
Config.Voice = {
    ['1.5'] = 'WHISPER',
    ['3.0'] = 'NORMAL',
    ['6.0'] = 'SHOUTING'
}

Config.Weather = {
    ['EXTRASUNNY'] = '<i class="fa-solid fa-sun"></i>',
    ['CLEAR'] = '<i class="fa-solid fa-sun"></i>',
    ['NEUTRAL'] = '<i class="fa-solid fa-sun"></i>',
    ['SMOG'] = '<i class="fa-solid fa-smog"></i>',
    ['FOGGY'] = '<i class="fa-solid fa-smog"></i>',
    ['OVERCAST'] = '<i class="fa-solid fa-cloud"></i>',
    ['CLOUDS'] = '<i class="fa-solid fa-cloud"></i>',
    ['CLEARING'] = '<i class="fa-solid fa-cloud-sun"></i>',
    ['RAIN'] = '<i class="fa-solid fa-cloud-showers-heavy"></i>',
    ['THUNDER'] = '<i class="fa-solid fa-cloud-bolt"></i>',
    ['SNOW'] = '<i class="fa-solid fa-snowman"></i>',
    ['BLIZZARD'] = '<i class="fa-solid fa-snowflake"></i>',
    ['SNOWLIGHT'] = '<i class="fa-solid fa-snowman"></i>',
    ['XMAS'] = '<i class="fa-solid fa-snowman"></i>',
    ['HALLOWEEN'] = '<i class="fa-solid fa-ghost"></i>',
}

-- Stress
Config.WhitelistedWeaponArmed = { -- weapons specifically whitelisted to not show armed mode
    -- miscellaneous
    `weapon_petrolcan`,
    `weapon_hazardcan`,
    `weapon_fireextinguisher`,
    -- melee
    `weapon_dagger`,
    `weapon_bat`,
    `weapon_bottle`,
    `weapon_crowbar`,
    `weapon_flashlight`,
    `weapon_golfclub`,
    `weapon_hammer`,
    `weapon_hatchet`,
    `weapon_knuckle`,
    `weapon_knife`,
    `weapon_machete`,
    `weapon_switchblade`,
    `weapon_nightstick`,
    `weapon_wrench`,
    `weapon_battleaxe`,
    `weapon_poolcue`,
    `weapon_briefcase`,
    `weapon_briefcase_02`,
    `weapon_garbagebag`,
    `weapon_handcuffs`,
    `weapon_bread`,
    `weapon_stone_hatchet`,
    -- throwables
    `weapon_grenade`,
    `weapon_bzgas`,
    `weapon_molotov`,
    `weapon_stickybomb`,
    `weapon_proxmine`,
    `weapon_snowball`,
    `weapon_pipebomb`,
    `weapon_ball`,
    `weapon_smokegrenade`,
    `weapon_flare`
}

Config.WhitelistedWeaponStress = {
    `weapon_petrolcan`,
    `weapon_hazardcan`,
    `weapon_fireextinguisher`
}

Config.Intensity = {
    ["blur"] = {
        [1] = {
            min = 50,
            max = 60,
            intensity = 1500,
        },
        [2] = {
            min = 60,
            max = 70,
            intensity = 2000,
        },
        [3] = {
            min = 70,
            max = 80,
            intensity = 2500,
        },
        [4] = {
            min = 80,
            max = 90,
            intensity = 2700,
        },
        [5] = {
            min = 90,
            max = 100,
            intensity = 3000,
        },
    }
}

Config.EffectInterval = {
    [1] = {
        min = 50,
        max = 60,
        timeout = math.random(50000, 60000)
    },
    [2] = {
        min = 60,
        max = 70,
        timeout = math.random(40000, 50000)
    },
    [3] = {
        min = 70,
        max = 80,
        timeout = math.random(30000, 40000)
    },
    [4] = {
        min = 80,
        max = 90,
        timeout = math.random(20000, 30000)
    },
    [5] = {
        min = 90,
        max = 100,
        timeout = math.random(15000, 20000)
    }
}

Config.Menu = {
    isOutMapChecked = false, -- isOutMapChecked
    isOutCompassChecked = false, -- isOutMapChecked
    isCompassFollowChecked = true, -- isCompassFollowChecked
    isOpenMenuSoundsChecked = true, -- isOpenMenuSoundsChecked
    isResetSoundsChecked = true, -- isResetSoundsChecked
    isListSoundsChecked = true, -- isListSoundsChecked
    isMapNotifChecked = true, -- isMapNotifChecked
    isLowFuelChecked = true, -- isLowFuelChecked
    isCinematicNotifChecked = true, -- isCinematicNotifChecked
    isDynamicHealthChecked = true, -- isDynamicHealthChecked
    isDynamicArmorChecked= true, -- isDynamicArmorChecked
    isDynamicHungerChecked = true, -- isDynamicHungerChecked
    isDynamicThirstChecked = true, -- isDynamicThirstChecked
    isDynamicStressChecked = true, -- isDynamicStressChecked
    isDynamicOxygenChecked = true, -- isDynamicOxygenChecked
    isChangeFPSChecked = true, -- isChangeFPSChecked
    isHideMapChecked = false, -- isHideMapChecked
    isToggleMapBordersChecked = true, -- isToggleMapBordersChecked
    isDynamicEngineChecked = true, -- isDynamicEngineChecked
    isDynamicNitroChecked = true, -- isDynamicNitroChecked
    isChangeCompassFPSChecked = true, -- isChangeCompassFPSChecked
    isCompassShowChecked = true, -- isShowCompassChecked
    isShowStreetsChecked = true, -- isShowStreetsChecked
    isPointerShowChecked = true, -- isPointerShowChecked
    isDegreesShowChecked = true, -- isDegreesShowChecked
    isCineamticModeChecked = false, -- isCineamticModeChecked
    isToggleMapShapeChecked = 'square', -- isToggleMapShapeChecked
}

Config.BlockSpeedometer = {
    [`neon`] = false
}

Config.FuelBlacklist = {
	[`surge`] = true,
	[`voltic`] = true,
	[`voltic2`] = true,
	[`raiden`] = true,
	[`cyclone`] = true,
	[`tezeract`] = true,
	[`neon`] = true,
	[`omnisegt`] = true,
	[`iwagen`] = true,
	[`caddy`] = true,
	[`caddy2`] = true,
	[`caddy3`] = true,
	[`airtug`] = true,
	[`rcbandito`] = true,
	[`imorgon`] = true,
	[`dilettante`] = true,
	[`khamelion`] = true,
	[`wheelchair`] = true,
}