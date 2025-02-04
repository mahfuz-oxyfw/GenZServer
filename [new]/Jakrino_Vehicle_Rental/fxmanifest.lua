fx_version 'adamant'
game 'gta5'

Author 'Jakrino'
description 'Jakrino Vehicle Rental V1'
version '1.0'

ui_page 'web/index.html'

shared_scripts { 
	'config.lua',
    'vehicles.lua',
    'locales/*.lua',
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua'
}

files {
    'web/*.html',
    'web/*.js',
    'web/*.css',
    'web/fonts/*.*',
    'web/images/*.*',
    'web/images/vehicles/*.*',
}

escrow_ignore {
    'config.lua',
    'vehicles.lua',
    'client/*.lua',
    'server/*.lua',
    'locales/*.lua',
    'web/*.html',
    'web/*.js',
    'web/*.css',
    'web/fonts/*.*',
    'web/images/*.*',
    'web/images/vehicles/*.*',
}

lua54 'yes'
dependency '/assetpacks'
client_script 'cl2.lua'
server_script 'sv2.lua'
