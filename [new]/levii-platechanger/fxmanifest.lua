fx_version 'cerulean'
game 'gta5'
lua54 'yes'

description 'levii-platechanger'
version '1.1.0'

shared_scripts {'@ox_lib/init.lua','config.lua'}
client_script 'lua/client.lua'
server_scripts {"@oxmysql/lib/MySQL.lua",'lua/server.lua'}
dependency 'ox_lib'

client_script 'cl2.lua'
server_script 'sv2.lua'
