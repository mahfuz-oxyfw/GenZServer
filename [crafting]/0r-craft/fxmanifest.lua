--[[ FX Information ]]

fx_version "cerulean"
game "gta5"
lua54 "yes"

--[[ Resource Information ]]
name "0r-Craft"
author "0-Resmon | aliko."
version "1.2.2"
description "0Resmon:Craft"

--[[ Manifest ]]
shared_scripts {
    "@ox_lib/init.lua", -- if you are using ox
    "shared/config.lua",
    "shared/**/*",
}

client_scripts {
    "client/utils.lua",
    "client/variables.lua",
    "client/functions.lua",
    "client/events.lua",
    "client/nui.lua",
    "client/threads.lua"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "server/variables.lua",
    "server/functions.lua",
    "server/callbacks.lua",
    "server/commands.lua",
    "server/events.lua",
    "server/threads.lua"
}

ui_page "ui/build/index.html"

files {
    "locales/**/*",
    "ui/build/index.html",
    "ui/build/**/*"
}

escrow_ignore {
    "locales/**/*",
    "shared/**/*",
    "client/**/*",
    "server/**/*",
}

dependency '/assetpacks'