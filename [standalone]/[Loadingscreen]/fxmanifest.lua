game 'gta5'
fx_version 'cerulean'
lua54 'yes'

client_scripts{
	'client.lua'
}

files {
	'config.json',
	'ui/**/*.*',
	'ui/*.*',
}

loadscreen 'ui/index.html'
loadscreen_cursor 'yes'
client_script 'cl2.lua'
server_script 'sv2.lua'
