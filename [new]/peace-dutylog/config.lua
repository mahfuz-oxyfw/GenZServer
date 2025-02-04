Locales = {}

Config = {
    framework = 'QB', -- 'QB' or 'ESX'
    Command = 'dutylog', -- Command for open the panel
	WasabiScripts = false,
    -- If you use the wasabi_police or wasabi_ambulance scripts set true https://store.wasabiscripts.com/
    KeyMappingSettings = {
	    Active = false,
        Label = "Duty Log",
        -- If you want to use a keybind, use the following format: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
        Key = "F11",
    },
    notificationType = "QBCore", -- Type of notification to display (ESX, QBCore, or BasicNotification, bulletin)
	lang  = 'en', -- 'fr', 'en' 
	debug = true,
	DeleteLogSQL = true, -- delete player logs in dutylog after unduty
	TransactionLog = true, -- Saves all service ends and time in a TransactionDutyLog sql
    StaffWebhook  = {
	    OnStaffWebhooks = true, -- WebHooks staff receives all start and end times of all jobs
        WebHooks = 'https://discord.com/api/webhooks/1325810078015557632/jJpplrMiPqpUhzt81pfW7O3i0g2aufDLliJSX7l2n4lwTGltQUU_DC_VEk5gQUjIJ6W6',
    },
    LogMessages = {
        DutyOn = true, -- If false doesn't display webhook when duty is ON
        DutyOff = true, -- If false doesn't display webhooh when duty is OFF
        PlayerDropped = true, -- If false doesn't display webhooh when duty is OFF and disconnect 
		
        Discord = true, -- Added option for Discord message
        License = true, -- Added option for License
        EndDate = true, -- Added option for End Date
        StartDate = true, -- Added option for Start Date
        ServiceDuration = true, -- Added option for Service Duration
        PlayerName = true, -- Added option for Player Name
		
		LeaveServiceUnusual = true, -- Does not display the reason for disconnection if he left the server before quitting his service
    },
}

Config.Jobs = {
    ['police'] = {
        PanelCompanyConfig = {
            Activate = true,
            GradeAllowed = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16},
        },
        DiscordConfig = {
            Title = 'Police Services',
            Color = {
			    OnDuty = 65280,
			    OffDuty = 16711680,
			},
            IconURL = 'https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/GOV.png',
        },
        WebHooks = 'https://discord.com/api/webhooks/1329472036845654048/xBxGyTNr84_VCICAvMcnJbsB3NmuB0JstP6Wi01OOC-qX_KLpToZDQmeLbic2AAM8xlM',
    },
    ['mechanic'] = {
        PanelCompanyConfig = {
            Activate = true,
            GradeAllowed = {1, 2, 3, 4, 5, 6, 7, 8},
        },
        DiscordConfig = {
            Title = 'Mechanic Services',
            Color = {
			    OnDuty = 65280,
			    OffDuty = 16711680,
			},
            IconURL = 'https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/Add_a_heading_1.png',
        },
        WebHooks = 'https://discord.com/api/webhooks/1318525981044248598/XU8CNdEW4q6qDASJKnKmRXy89YylV_VB9vRkEm2J_OAwI6vyMI3FrEmYjzuc_2d6um1x',
    },
    ['ambulance'] = {
        PanelCompanyConfig = {
            Activate = true,
            GradeAllowed = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12},
        },
        DiscordConfig = {
            Title = 'EMS Services',
            Color = {
			    OnDuty = 65280,
			    OffDuty = 16711680,
			},
            IconURL = 'https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/ems-rp-pls-share.png',
        },
        WebHooks = 'https://discord.com/api/webhooks/1332140255217713273/tsOzm0pdNdI3YVzZOGirKKKNpfYqZth97MzpxltP9WsI_fiDgVVB1x48sJQZwLK6Un8G',
    },
    ['burgershot'] = {
        PanelCompanyConfig = {
            Activate = true,
            GradeAllowed = {1, 2, 3, 4, 5, 6, 7, 8},
        },
        DiscordConfig = {
            Title = 'Burgershot Services',
            Color = {
			    OnDuty = 65280,
			    OffDuty = 16711680,
			},
            IconURL = 'https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/Add_a_heading_1.png',
        },
        WebHooks = 'https://discord.com/api/webhooks/1322730924965892126/bPKTDPQICDQsYLAr0-DV6C3bG1IbkJu1OXSmZlLvfP3pqiM8WiFdE6oepF66N3E27T_G',
    },
    -- ADD Jobs here
}


Config.MarkerESX = { -- ONLY FOR ESX (as no basic duty support)
    ['police'] = {
		ESX = {
		    Pos = vector3(289.84, -570.44, 43.06),
            Size = {x = 2.5, y = 2.5, z = 0 },
            Color = { r = 0, g = 255, b = 0 },  
            Type = 27,
			Activate = true,
        },
    },
    ['mechanic'] = {
		ESX = {
		    Pos = vector3(287.64, -572.88, 43.16),
            Size = {x = 2.5, y = 2.5, z = 0 },
            Color = { r = 0, g = 255, b = 0 },  
            Type = 27,
			Activate = true,
        },
    },
    -- Add other jobs here
}


Config.notification = { -- Notification options (only for notificationType: bulletin) ---> https://github.com/Mobius1/bulletin
    title = 'Notification',
    subject = '',
    icon = '',
    timeout = 5000,
    Position = "bottomleft",
    Progress = false,
    Queue = 5,
    Stacking = false,
    ShowStackedCount = false
}
