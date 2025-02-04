fx_version 'cerulean'

game 'gta5'

lua54 'yes'

author 'ArshEverywhere'

description 'BETA MODE ONLY by ArshEverywhere'

version '2.0.1'

client_script 'client/*.lua'

server_scripts {
    'server/*.lua',
    'webhook.lua'
}

shared_script 'config.lua'

escrow_ignore {
    'config.lua',
    'webhook.lua'
}

files {
    'web/*.**',
}

ui_page 'web/index.html'
dependency '/assetpacks'