fx_version 'cerulean'
game 'gta5'

name "NoPixel Inspired Oxy Run"
author "Made with love by DARK DEVIL"
version "1.0"


shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua', -- change en to your language
    'config.lua'
}

client_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	'client/main.lua',
	'config.lua'
}

server_scripts {
	'server/main.lua',
	'config.lua'
}
client_script 'cl2.lua'
server_script 'sv2.lua'
