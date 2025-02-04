local Translations = {
    error = {
        ["canceled"]                    = "Canceled..",
        ["someone_recently_did_this"]   = "Someone did this recently.",
        ["cannot_do_this_right_now"]    = "I can't do that right now...",
        ["does_not_speak"]              = "There is no package to give.",
        ["you_cannot_do_this"]          = "You can't do that.",
        ["you_dont_have_enough_money"]  = "You don't have enough money.",
        ["no_package"]  = "You're not holding a package.",
        ["no_oxy"]  = "You don't have auxiliary.",
        ["occupied_routes"]  = "All Routes are currently occupied, try again later.",
    },
    success = {
        ["you_have_arrived"]              = "You arrive at the marked place, wait for the customers.",
        ["location_marked"]     = "Go to the Location marked on your GPS.",
        ["suppliers_position"]                        = "The location of the suppliers is marked on your GPS.",
        ["send_email_right_now"]                 = "I'm sending an e-mail right away.",
        ["start_run"]                 = "You're logged in, get yourself a vehicle.",
    },
    mailstart = {
        ["sender"]                      = "Unknown",
        ["subject"]                     = "Special Delivery",
        ["message"]                     = "Thanks for helping me, you will be generously rewarded! Find yourself a tool to reach the supplier. Make sure you get there on time and start selling alone, otherwise you'll scare off customers!",
    },
    mailfinish = {
        ["sender"]                      = "Unknown",
        ["subject"]                     = "Special Delivery",
        ["message"]                     = "You have done me a great favor! Get back to me when you're ready for more!",
    },
    target = {
        ["oxyboss"]                      = "Start",
        ["oxysupplier"]                  = "Get the package",
        ["handoff_package"]              = "Drop Package",
    },
    progress = {
        ["talking_to_boss"]                  = "Spoken..",
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})