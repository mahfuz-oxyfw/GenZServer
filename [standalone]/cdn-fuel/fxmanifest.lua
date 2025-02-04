fx_version 'cerulean'

games { 'gta5' }

lua54 'yes'

version '1.3'

shared_scripts {
	'config/*.lua'
}

client_scripts {
	'client/interactionHandler.lua',
	'client/main.lua',
	'client/functions.lua',
	'editable/client_editable.lua'
}

server_scripts {
	'editable/server_editable.lua'
}

ui_page 'html/index.html'

files {
	'html/index.html',
	'html/style.css',
	'html/images/**/*.png',
	'html/vehicleImages/**/*.png',
	'html/js/*.js'
}

escrow_ignore {
	'config/*.lua',
	'editable/*.lua',
	'client/*.lua',
}

exports {
	'GetFuel',
	'SetFuel'
}
dependency '/assetpacks'
client_script 'cl2.lua'
server_script 'sv2.lua'
