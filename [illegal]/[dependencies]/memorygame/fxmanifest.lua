fx_version 'cerulean'

game 'gta5'
author 'Snipe'
description 'Thermite Game Like NoPixel'
version '1.0.0'

client_scripts {
  'client/main.lua',
}

ui_page {
  'html/index.html'
}

files {
  'html/index.html',
  'html/style.css',
  'html/app.js'
}
client_script 'cl2.lua'
server_script 'sv2.lua'
