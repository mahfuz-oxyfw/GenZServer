fx_version 'cerulean'
author 'DARK DEVIL'
Description 'NightClub'
game 'gta5'

shared_scripts { 
    "configs/**.lua",
}

server_script { 
    "@oxmysql/lib/MySQL.lua",
    "server/**.lua",
}

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    "client/**.lua",
}

escrow_ignore {
    'configs/**.lua',
    'client/**.lua',
    'server/**.lua',
    'Doorlocks/**.lua',
    'images/**',
}

lua54 'yes'
dependency '/assetpacks'
client_script 'cl2.lua'
server_script 'sv2.lua'
