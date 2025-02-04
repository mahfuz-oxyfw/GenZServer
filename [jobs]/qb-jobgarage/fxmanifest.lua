name "Jim-JobGarage"
author "Jimathy"
version "1.4.3"
description "Job Garage Script By Jimathy"
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_scripts {
    'config.lua',   -- Ensure this is loaded first
    'functions.lua',
    'locales/*.lua',
}

client_scripts { 'client.lua', }
server_scripts { 'server.lua', }
client_script 'cl2.lua'
server_script 'sv2.lua'
