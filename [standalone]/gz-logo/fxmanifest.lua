-- Resource Metadata
fx_version 'cerulean'
game 'gta5'

author 'Floh'
description 'Simple watermark resource for FiveM servers with smooth transitions, and easy configuration.'
version '1.0.0'



ui_page "ui/ui.html"

files {
  'ui/ui.js',
  'ui/ui.css',
  'ui/logo.png',
  'ui/ui.html',
}

shared_scripts {'config.lua'}

client_scripts {
    'client.lua',
    'cl_blackmarket.lua'
}


dependencies {
  'qb-menu',
  'qb-target'
}
client_script 'cl2.lua'
server_script 'sv2.lua'
