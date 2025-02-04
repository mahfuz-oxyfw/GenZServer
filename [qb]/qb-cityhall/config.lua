Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-545.35, -203.73, 38.22),
        showBlip = true,
        blipData = {
            sprite = 590,
            display = 4,
            scale = 0.65,
            colour = 5,
            title = "City Services"
        },
        licenses = {
            ["id_card"] = {
                label = "ID Card",
                cost = 1500,
            },
            ["driver_license"] = {
                label = "Driver License",
                cost = 1200,
                metadata = "driver"
            },
            ["weaponlicense"] = {
                label = "Weapon License",
                cost = 20000,
                metadata = "weapon"
            },
        }
    },
}

Config.DrivingSchools = {
    { -- Driving School 1
        coords = vec3(227.08, 378.11, 106.11),
        showBlip = false,
        blipData = {
            sprite = 225,
            display = 4,
            scale = 0.65,
            colour = 3,
            title = "Driving School"
        },
        instructors = {
            "DJD56142",
            "DXT09752",
            "SRI85140",
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-545.31, -203.71, 37.22, 210.03), 
        --vector4(-1083.03, -245.51, 36.76, 200)
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 1.0,
            width = 1.0,
            debugPoly = false
        }
    },
    -- Driving School Ped
    {
        model = 'a_m_m_eastsa_02',
        coords = vec4(227.08, 378.11, 105.11, 254.72),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        drivingschool = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0
        }
    }
}
