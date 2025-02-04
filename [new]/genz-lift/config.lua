return {
    texts = {
        open = '[~g~E~w~] - Elevator'
    },

    draw_dist = 3.0,
    interact_dist = 1.5,

    elevators = {
        ['Hospital Lift'] = {
            {
                number = 0, -- floor
                name = 'Hospital Ground Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-467.76, -1027.08, 19.69),
            },
            {
                number = 1, -- floor
                name = 'Floor One', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-467.73, -1027.18, 24.29),
            },
            {
                number = 2, -- floor
                name = 'Roof', -- or false
                --code = '1234', -- restrict floor by password
                pos = vector3(-467.80, -1027.18, 29.09),
            },
            {
                number = 3, -- floor
                name = 'Roof', -- or false
                --code = '1234', -- restrict floor by password
                pos = vector3(-467.81, -1027.09, 33.69),
            },
        },
        ['Police Department Lift'] = {
            {
                number = 0, -- floor
                name = 'PD Ground Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(465.27, -977.24, 25.47),
            },
            {
                number = 1, -- floor
                name = 'PD Ground Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(463.68, -977.78, 30.72),
            },
            {
                number = 2, -- floor
                name = 'PD Second Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(463.68, -977.91, 35.06),
            },
            {
                number = 3, -- floor
                name = 'PD Third Floor', -- or false
                --code = '1234', -- restrict floor by password
                pos = vector3(463.67, -977.95, 39.42),
            },
            {
                number = 4, -- floor
                name = 'PD Heli Floor', -- or false
                --code = '1234', -- restrict floor by password
                pos = vector3(465.32, -978.15, 43.70),
            },
        },

-----------------------------------------------------------------Membership-----------------------------------------------------------------

        ['Member ToTo69'] = {
            {
                number = 0, -- floor
                name = 'Ground Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-66.97, -802.47, 44.23),
            },
            {
                number = 1, -- floor
                name = 'Top Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-78.96, -829.41, 243.39),
            },
        },
        ['Member Ar Rony'] = {
            {
                number = 0, -- floor
                name = 'Ground Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-884.35, -434.05, 39.60),
            },
            {
                number = 1, -- floor
                name = 'Top Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-890.90, -453.08, 95.46),
            },
        },
        ['Member Ragner'] = {
            {
                number = 0, -- floor
                name = 'Ground Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-935.47, -378.60, 38.96),
            },
            {
                number = 1, -- floor
                name = 'Top Floor', -- or false
                code = nil, -- restrict floor by password
                pos = vector3(-923.30, -378.27, 85.48),
            },
        },
    },
}