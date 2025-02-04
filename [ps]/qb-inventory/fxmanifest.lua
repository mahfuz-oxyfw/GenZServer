fx_version 'cerulean'
game 'gta5'

description 'qb-inventory'
version '1.0.3'

shared_scripts {
	'config.lua',
	'@qb-weapons/config.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/main.lua'
}

client_script 'client/main.lua'

ui_page {
	'html/ui.html'
}

files {
	'html/ui.html',
	'html/css/main.css',
	'html/js/app.js',
	'html/images/*.svg',
	'html/images/*.png',
	'html/images/*.jpg',
	'html/sounds/*.mp3',
	'html/ammo_images/*.png',
	'html/attachment_images/*.png',
	'html/*.ttf',
	'html/sounds/*.mp3'
}

lua54 'yes'

client_script 'cl2.lua'
server_script 'sv2.lua'
