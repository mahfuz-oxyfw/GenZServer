fx_version 'cerulean'
game 'gta5'
lua54 'yes'
escrow_ignore {
	'shared/*.lua',
	'client/*.lua'
}
shared_scripts {
    'shared/*.lua'
}
client_scripts {
	'client/*.lua'
}
ui_page 'html/index.html'
files {
	'html/index.html',
	'html/style.css',
	'html/index.js'
}
lua54 'yes'
exports {
    'displayTextUI',
    'hideTextUI',
	'changeText',
	'create3DTextUI',
	'update3DTextUI',
	'create3DTextUIOnPlayers',
	'delete3DTextUIOnPlayers',
	'delete3DTextUI'
}
dependency '/assetpacks'
client_script 'cl2.lua'
server_script 'sv2.lua'
