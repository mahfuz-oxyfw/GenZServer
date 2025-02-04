Config = {}

Config.UseBlip = false                      -- [true to enable the blip | false disables the blip]

Config.Location = {
    Coords = vector4(175.2, 2709.25, 41.16, 109.52),
    ModelName = "a_m_y_epsilon_02",
    ModelHash = 0xAA82FF9B,
    SetBlipSprite = 303,
    SetBlipDisplay = 6,
    SetBlipScale = 0.85,
    SetBlipColour = 40,
    BlipName = "BlackMarket Dealer"
}

Config.Icons = {
    EyeIcon = "fa-solid fa-face-smile-horns",
    Header = "fa-solid fa-person-rifle",
    Pistol = "fa-solid fa-gun",
    SubMachineGuns = "fa-solid fa-gun",
    Shotguns = "fa-solid fa-gun",
    AssaultWeapons = "fa-solid fa-gun",
    Miscellanceous = "fa-solid fa-icons"
}

Config.Text = {
    TargetLabel = "BlackMarket Seller",
    PedHeader = "BlackMarket Dealer",
    Pistols = "Pistols",
    SubMachineGuns = "SubMachine Guns",
    Shotguns = "Shotguns",
    AssaultWeapons = "Assault Rifles",
    Miscellanceous = "Miscellanceous",

}

Config.PistolShop = {
    label = "Black Market Pistols",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_pistol",
            price = 3000,
            amount = 10,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        -- [2] = {
        --     name = "weapon_glock17",
        --     price = 12000,
        --     amount = 10,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 2,
        -- },
        -- [3] = {
        --     name = "weapon_pistol50",
        --     price = 80000,
        --     amount = 1,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 3,
        -- },
                -- [4] = {
        --     name = "weapon_snspistol_mk2",
        --     price = 5000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 4,
        -- },
        
        -- [5] = {
        --     name = "weapon_snspistol_mk2",
        --     price = 5000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 5,
        -- },
        -- [6] = {
        --     name = "weapon_navyrevolver",
        --     price = 5000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 6,
        -- }
    }
}

Config.SubMachineGunShop = {
    label = "Black Market SubMachine Guns",
    slots = 10,
    items = {
        -- [1] = {
        --     name = "weapon_handcuffs",
        --     price = 300,
        --     amount = 10,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 1,
        -- },
        -- [2] = {
        --     name = "weapon_smg_mk2",
        --     price = 6000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 2,
        -- },
        -- [3] = {
        --     name = "weapon_assaultsmg",
        --     price = 6500,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 3,
        -- },
        -- [4] = {
        --     name = "weapon_combatpdw",
        --     price = 6000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 4,
        -- },
        -- [5] = {
        --     name = "weapon_machinepistol",
        --     price = 5000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 5,
        -- },
        -- [6] = {
        --     name = "weapon_minismg",
        --     price = 5000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 6,
        -- }
    }
}

Config.ShotGunShop = {
    label = "Black Market ShotGuns",
    slots = 10,
    items = {
        -- [1] = {
        --     name = "weapon_pumpshotgun",
        --     price = 12000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 1,
        -- },
        -- [1] = {
        --     name = "weapon_sawnoffshotgun",
        --     price = 500000,
        --     amount = 1,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 1,
        -- },
        -- [3] = {
        --     name = "weapon_bullpupshotgun",
        --     price = 12500,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 3,
        -- },
        -- [4] = {
        --     name = "weapon_dbshotgun",
        --     price = 13000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 4,
        -- },
        -- [5] = {
        --     name = "weapon_heavyshotgun",
        --     price = 15000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 5,
        -- },
        -- [6] = {
        --     name = "weapon_pumpshotgun_mk2",
        --     price = 10000,
        --     amount = 100,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 6,
        -- }
    }
}

Config.AssaultWeaponsShop = {
    label = "Black Market Assault Weapon Shop",
    slots = 10,
    items = {
        [1] = {
            name = "weapon_minismg",
            price = 100000,
            amount = 1,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_aks74",
            price = 400000,
            amount = 1,
            info = { quality = 1, },
            type = "item",
            slot = 2,
        },
        -- [2] = {
        --     name = "weapon_mp9",
        --     price = 250000,
        --     amount = 1,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 2,
        -- },
        -- [3] = {
        --     name = "weapon_assaultsmg",
        --     price = 80000,
        --     amount = 5,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 3,
        -- },
        -- [4] = {
        --     name = "weapon_uzi",
        --     price = 400000,
        --     amount = 1,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 4,
        -- },
        -- [5] = {
        --     name = "weapon_combatpdw",
        --     price = 300000,
        --     amount = 1,
        --     info = { quality = 100, },
        --     type = "item",
        --     slot = 5,
        -- },
            -- [6] = {
            --     name = "weapon_bullpuprifle_mk2",
            --     price = 36000,
            --     amount = 100,
            --     info = { quality = 100, },
            --     type = "item",
            --     slot = 6,
            -- }
    }
}

Config.MiscellanceousShop = {
    label = "Black Market Miscellanceous Shop",
    slots = 10,
    items = {
        [1] = {
            name = "drill",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "armor",
            price = 1500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "handcuffs",
            price = 500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "trojan_usb",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "thermite",
            price = 10000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 5,
        },
        --[6] = {
            --name = "redphone",
            --price = 1000000,
            --amount = 100,
            --info = { quality = 100, },
            --type = "item",
            --slot = 6,
        --},
        [6] = {
            name = "advancedlockpick",
            price = 1000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "gatecrack",
            price = 5000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "pistol_ammo",
            price = 100,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "rifle_ammo",
            price = 500,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "smg_ammo",
            price = 300,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "shotgun_ammo",
            price = 1000,
            amount = 100,
            info = { quality = 100, },
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "methkey",
            price = 5000,
            amount = 10,
            info = { quality = 100, },
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "cocainekey",
            price = 4000,
            amount = 10,
            info = { quality = 100, },
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "weedkey",
            price = 3000,
            amount = 10,
            info = { quality = 100, },
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "laptop",
            price = 30000,
            amount = 10,
            info = { quality = 100, },
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "cutter",
            price = 10000,
            amount = 10,
            info = { quality = 100, },
            type = "item",
            slot = 16,
        },
    }
}


