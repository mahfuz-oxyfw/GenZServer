
Config = Config or {}

Config.Framework = 'qb' -- qb | esx 

if Config.Framework == 'qb' then    -- Dont touch this part
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == 'esx' then
    ESX = exports.es_extended:getSharedObject()
end

Config.Dependency = {                   
    UseTarget = 'qb',                   -- qb | ox
    UseInventory = 'qb',                -- qb | ox | esx             
    UseProgress = 'qb',                 -- qb | ox | esx                  
    UseMenu = 'qb',                     -- qb | ox | esx 
    UseNotify = 'qb',                   -- qb | ox | esx
    UseAppearance = 'illenium',               -- qb | illenium | false 
}

Config.ExitCamKey = 'BACK' 

Config.CameraEffect = {
    bodycam = 'Island_CCTV_ChannelFuzz',
    dashcam = 'TinyRacerMoBlur',
} 

Config.ForceViewCam = false     -- Forces cam view to first person when recording.
Config.RecordTime = 30          --Recording Time | 30 = 30 seconds | [*note: Dont increase the time too much or it may not upload to any service you are using for example - discord.]

Config.PropLoc = {  -- Change prop position according to ur clothing pack.
    male = {
        bone = 24818,
        pos = vector3(0.16683200771922, 0.11320925137666, 0.11986595654326),
        rot = vector3(-14.502323044318, 82.191095946679, -164.22066869048),
    },
    female = {
        bone = 24818,
        pos = vector3(0.16683200771922, 0.11320925137666, 0.11986595654326),
        rot = vector3(-14.502323044318, 82.191095946679, -164.22066869048),
    },
}

Config.AllowedJobs = { -- Only these jobs can use bodycam/dashcam item.
    'police',
    'ambulance',
}

Config.AllowedClass = {18} -- Vehicle classes allowed to use the dashcam feature.

Config.WatchLoc = {
    [1] = {
        coords = vector3(474.0, -996.47, 30.69), 
        rad = 0.3, 
        debug= false,
        jobCam = {'police','ambulance'},  -- jobs mentioned here are shown in the list | false = able to view all the bodycams
        carCam = {                        -- false = able to view all the dashcams
            job = {'police'},             -- Jobs that activate dashcams shown in the list | false excludes.
            class = {18}                  -- Dashcam activated on these vehicleclass shown in the list | false excludes.
        },
        targetAuth = {'police'},          -- jobs mentioned here can use this location from target | false = everyone can access this location

    },  -- You can add more locations 
}

Config.DebugCamera = false -- Make it true if you want to get new camera offset for some vehicle.
Config.VehCamOffset = {
    [`police2`] = {0.000000, 0.330000, 0.530000},
    -- [`18chgr2`] = {0.000000, 0.510000, 0.630000},  -- Example vehicle. The script comes with its own offset finder just set DebugCamera to true and get the offset.
    -- [`vehiclespawncode`] = {0.000000, 0.510000, 0.630000},
}

-- Vehicle Classes:  
-- 0: Compacts  
-- 1: Sedans  
-- 2: SUVs  
-- 3: Coupes  
-- 4: Muscle  
-- 5: Sports Classics  
-- 6: Sports  
-- 7: Super  
-- 8: Motorcycles  
-- 9: Off-road  
-- 10: Industrial  
-- 11: Utility  
-- 12: Vans  
-- 13: Cycles  
-- 14: Boats  
-- 15: Helicopters  
-- 16: Planes  
-- 17: Service  
-- 18: Emergency  
-- 19: Military  
-- 20: Commercial  
-- 21: Trains  
-- 22: Open Wheel