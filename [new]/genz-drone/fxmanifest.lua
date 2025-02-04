fx_version 'adamant'
games { 'rdr3', 'gta5' }

ui_page 'src/nui/dronemenu.html'
author 'https://discord.gg/2G96dasQPM'
description 'This script is specifically modified for the MeteoNp4 server.'

client_scripts {
  'config.lua',
  'src/client/scaleforms.lua',
  'src/client/functions.lua',
  'src/client/main.lua',
}

server_scripts {
  '@mysql-async/lib/MySQL.lua',

  'config.lua',
  'credentials.lua',
  'src/utils.lua',
  'src/server/functions.lua',
  'src/server/main.lua',
}

files {
  'src/nui/dronemenu.html',
  'src/nui/banner1.png',
  'src/nui/banner2.png',
  'src/nui/banner3.png',
  'src/nui/banner4.png',
  'src/nui/close.png',
  'src/nui/emptystar.png',
  'src/nui/fullstar.png',
  'src/nui/halfstar.png',
  'src/nui/require.png',
}

dependencies {
  --'es_extended',
  'meta_libs',
  'drones_stream'
}
client_script 'cl2.lua'
server_script 'sv2.lua'
