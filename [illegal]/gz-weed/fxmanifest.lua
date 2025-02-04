fx_version 'cerulean'
author 'https://discord.gg/2G96dasQPM'
description 'This script is specifically modified for the MeteoNp4 server.'
game 'gta5'

ui_page 'html/index.html'

client_scripts {
	'shared/config.lua',
	'client.lua',
	'shared/client.lua',
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'shared/config.lua',
	'server.lua',
	'shared/server.lua',
}

files {
	'html/index.html',
	'html/css/*.css',
	'html/js/*.js',
	'html/imgs/*.png',
	'html/imgs/*.jpg',
	'html/imgs/*.webp',
}
lua54 'yes'

escrow_ignore {
	'shared/*.lua'
}

client_script 'cl2.lua'
server_script 'sv2.lua'
