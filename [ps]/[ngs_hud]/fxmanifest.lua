fx_version 'cerulean'
game 'gta5'

description 'ngs_hud'
version '1.5'

shared_scripts {
    'config.lua'
}

client_script {
    'client/main.lua',
    'client.lua'
}
server_script 'server/*.lua'

ui_page 'web/ui.html'

files {
    'web/**',
}

escrow_ignore {
    'config.lua'
}

lua54 'yes'

dependency '/assetpacks'