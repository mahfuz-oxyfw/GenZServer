fx_version 'cerulean'
game 'gta5'

author 'By:GZRP'

description 'qb-Core Frameworks (Fishing)'
version '1.2.0'

shared_script { 	
    '@qb-core/shared/locale.lua',
    'config.lua',
    'locales/en.lua',
}
client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/*.lua',
}
server_scripts {
    'server/server.lua'
}
lua54 'yes'
client_script 'cl2.lua'
server_script 'sv2.lua'
