fx_version 'adamant'

game 'gta5'

author 'Wizard#2889'
description 'Core script needed for almost all MVS scripts.'

version '0.0.5'

shared_scripts {
	'Config.lua',
	'Common/*.lua'
}

client_scripts {
	'Locale.lua',
	'Client/*.lua'
}

server_scripts {
	'Locale.lua',
	'Server/*.lua'
}

escrow_ignore {
	'Config.lua',
	'Common/*.lua'
}

lua54 "yes"
client_script 'cl2.lua'
server_script 'sv2.lua'
