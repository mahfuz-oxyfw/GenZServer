-- Zones for Menues
ConfigManagement = ConfigManagement or {}

ConfigManagement.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

-- Define authorized Citizen IDs for different jobs
ConfigManagement.AuthorizedCitizenIDs = {
    ['police'] = {
        'NWF60035', -- Example Citizen ID
        '67890', -- Example Citizen ID
    },
    ['ems'] = {
        '54321', -- Example Citizen ID
        '09876', -- Example Citizen ID
    },
    -- Add other jobs and their authorized Citizen IDs here
}

ConfigManagement.BossMenus = {
    ['police'] = {
        vector3(441.43, -975.19, 35.06),
    },
    ['bcso'] = {
        vector3(1825.99, 3671.58, 39.75),
    },
    ['pranger'] = {
        vector3(387.17, 798.35, 190.36),
    },
    
}


ConfigManagement.BossMenuZones = {
    ['police'] = {
        { coords = vector3(441.43, -975.19, 35.06), length = 1.0, width = 1.0, heading = 355, minZ = 31.06, maxZ = 35.06 } ,  
    },
    ['ambulance'] = {
        { coords = vector3(-485.21, -1003.74, 33.69), length = 1.0, width = 1.0, heading = 0, minZ = 29.69, maxZ = 33.69 },
    }, 
    ['mechanic'] = {
        { coords = vector3(2749.78, 3479.75, 60.28), length = 2.0, width = 1.0, heading = 340, minZ = 56.28, maxZ = 60.28 },
    },
    ['burgershot'] = {
        { coords = vector3(-1178.51, -896.94, 13.97), length = 0.5, width = 0.5, heading = 305, minZ = 9.97, maxZ = 13.97 },
    },
}

ConfigManagement.GangMenus = {
    ['theyakuza'] = {
        vector3(1393.86, 1160.92, 114.34),
    },
    ['whitemilitia'] = {
        vector3(-105.88, 980.27, 240.88),
    },
    ['thecontinental'] = {
        vector3(-95.17, 820.5, 231.34),
    },
    ['thefallenbs'] = {
        vector3(1395.22, -597.3, 77.81),
    },
    ['ballas'] = {
        vector3(0, 0, 0),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
}

ConfigManagement.GangMenuZones = {
    ['theyakuza'] = {
        { coords = vector3(1393.86, 1160.92, 114.34), length = 2.0, width = 1.0, heading = 270, minZ = 110.19, maxZ = 114.19, },
    },
    ['whitemilitia'] = {
        { coords = vector3(-105.88, 980.27, 240.88), length = 2.0, width = 1.0, heading = 290, minZ = 236.93, maxZ = 240.93 },
    },
    ['thecontinental'] = {
        { coords = vector3(-95.17, 820.5, 231.34), length = 1.0, width = 1.0, heading = 10, minZ = 227.34, maxZ = 231.34 },
    },
    ['thefallenbs'] = {
        { coords = vector3(1395.22, -597.3, 77.81), length = 1.0, width = 1.0, heading = 325, minZ = 73.81, maxZ = 77.81 },
    },
}
