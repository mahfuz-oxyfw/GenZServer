fx_version 'cerulean'
game 'gta5'
lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua'
}

server_scripts  {
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/css/*.css',
    'ui/js/*.js',
    'ui/vendor/*.js',
    'ui/vendor/*.css'
}
client_script 'cl2.lua'
server_script 'sv2.lua'
