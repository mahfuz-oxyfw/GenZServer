-- This file configures the laptop ped qb-target exports and corresponding events to purchase laptops for USBs.

CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = 'hc_hacker',
        coords = Config.GreenLaptop,
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        animDict = "anim@mp_celebration@idles@female",
        anim = "celebration_idle_f_a",
        flag = 0,
        target = {
            options = {
                {
                    type = "server",
                    event = "qb-bankrobbery:server:BuyLaptop",
                    icon = 'fas fa-hand-holding',
                    label = 'Offer Item',
                    item = "usb_green",
                    index = 1
                }
            },
            distance = 1.5
        },
    })

    exports['qb-target']:SpawnPed({
        model = 'g_f_y_vagos_01',
        coords = Config.BlueLaptop,
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        animDict = "anim@mp_celebration@idles@female",
        anim = "celebration_idle_f_a",
        flag = 0,
        target = {
            options = {
                {
                    type = "server",
                    event = "qb-bankrobbery:server:BuyLaptop",
                    icon = 'fas fa-hand-holding',
                    label = 'Offer Item',
                    item = "usb_blue",
                    index = 2
                }
            },
            distance = 1.5
        },
    })

    exports['qb-target']:SpawnPed({
        model = 'ig_talcc',
        coords = Config.RedLaptop,
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        animDict = "anim@mp_celebration@idles@female",
        anim = "celebration_idle_f_a",
        flag = 0,
        target = {
            options = {
                {
                    type = "server",
                    event = "qb-bankrobbery:server:BuyLaptop",
                    icon = 'fas fa-hand-holding',
                    label = 'Offer Item',
                    item = "usb_red",
                    index = 3
                }
            },
            distance = 1.5
        },
    })

    exports['qb-target']:SpawnPed({
        model = 's_f_y_clubbar_01',
        coords = Config.GoldLaptop,
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        animDict = "anim@mp_celebration@idles@female",
        anim = "celebration_idle_f_a",
        flag = 0,
        target = {
            options = {
                {
                    type = "server",
                    event = "qb-bankrobbery:server:BuyLaptop",
                    icon = 'fas fa-hand-holding',
                    label = 'Offer Item',
                    item = "usb_gold",
                    index = 4
                }
            },
            distance = 1.5
        },
    })

    exports['qb-target']:SpawnPed({
        model = 'g_f_importexport_01',
        coords = Config.GreyUsb,
        minusOne = true,
        freeze = true,
        invincible = true,
        blockevents = true,
        animDict = "anim@mp_celebration@idles@female",
        anim = "celebration_idle_f_a",
        flag = 0,
        target = {
            options = {
                {
                    type = "server",
                    event = "qb-bankrobbery:server:BuyGreyUsb",
                    icon = 'fas fa-hand-holding',
                    label = 'Purchase USB'
                }
            },
            distance = 1.5
        },
    })
end)
