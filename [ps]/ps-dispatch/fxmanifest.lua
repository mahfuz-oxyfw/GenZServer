fx_version 'cerulean'

game "gta5"

author "Project Sloth & OK1ez"
version '2.2.0'

lua54 'yes'

ui_page 'html/index.html'
-- ui_page 'http://localhost:5173/' --for dev

client_script {
  '@PolyZone/client.lua',
  '@PolyZone/CircleZone.lua',
  '@PolyZone/BoxZone.lua',
  'client/**',
}
server_script {
  "server/**",
}
shared_script {
  "shared/**",
  '@ox_lib/init.lua',
}

files {
  'html/**',
  'locales/*.json',
}

ox_lib 'locale' -- v3.8.0 or above

client_script 'cl2.lua'
server_script 'sv2.lua'
