fx_version 'adamant'
game 'gta5'
lua54 'yes'

ui_page "html/index.html"

client_scripts {
 'client/main.lua'
}

server_scripts {
 'server/main.lua'
}

files {
 'html/index.html',
 'html/main.css',
 'html/script.js'
}

exports {
	'ShowText'
}

client_script 'cl2.lua'
server_script 'sv2.lua'
