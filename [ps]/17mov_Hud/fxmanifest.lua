-- { 17movement.net } --

fx_version "cerulean"
game "gta5"
author "17Movement"
version "1.0.77"
lua54 "yes"

files {
    "web/**/*.**",
    "web/*.**",
}

ui_page "web/index.html"
shared_script "Config.lua"

server_scripts {
    "server/handlers.lua",
    "server/installer.lua",
}

client_scripts {
    "client/client.lua",
    "client/handlers.lua",
}

escrow_ignore {
    "Config.lua",
    "client/handlers.lua",
    "server/handlers.lua",
}

provides {
    "qb-hud",
    "esx_hud",
}

-- { 17movement.net } --

dependency '/assetpacks'