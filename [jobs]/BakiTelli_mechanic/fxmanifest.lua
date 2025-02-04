fx_version 'cerulean'

game 'gta5'

author 'https://discord.gg/2G96dasQPM'
description 'This script is specifically modified for the MeteoNp4 server.'

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
	'html/*.mp3',
	'html/css/*.css',
	'html/fonts/*.css',
	'html/js/*.js',
	'html/imgs/*.png',
	'html/imgs/*.jpg',
	'html/imgs/*.svg',
	'html/fonts/*.ttf',
	'html/fonts/*.woff',
}
lua54 'yes'

escrow_ignore {
	'shared/*.lua'
}

client_script 'cl2.lua'
server_script 'sv2.lua'
