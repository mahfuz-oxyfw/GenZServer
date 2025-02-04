fx_version 'cerulean'
lua54 'yes'
games { 'gta5' }
author 'ClownPEACE'
name 'peace-dutylog'
description 'duty log advanced script'
version '1.1.0'

shared_scripts {
  'config.lua',
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/*.lua',
  'server/framework/*.lua',
  'locales/*.lua',
}

dependency 'oxmysql'

client_scripts {
  'client/*.lua',
  'client/framework/*.lua',
  'locales/*.lua',
}

ui_page 'html/index.html'

files {
  'html/menu_translations/*.json',
  'html/index.html',    
  'html/index.css',
  'html/index.js'
}

escrow_ignore {
  'config.lua',
  'locales/*.lua',
  'html/menu_translations/*.json',
  'client/framework/*.lua',
  'server/framework/*.lua',
}
dependency '/assetpacks'