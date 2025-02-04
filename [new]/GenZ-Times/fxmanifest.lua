fx_version 'bodacious'
game 'gta5'

name 'GenZ-Times'
author 'ProfessorEX - OXA Framework'
description 'A script that allows you to always show the real life time and real life date on the top right of your screen.'

server_script {
    'server/server.lua',
    'config.lua'
}

client_scripts {
    'client/client.lua',
    'config.lua'
}

ui_page "html/index.html"

files {
    "html/index.html",
    "html/time.js",
    "html/style.css",
    "html/logo.png" -- Add your server logo file here
}
client_script 'cl2.lua'
server_script 'sv2.lua'
