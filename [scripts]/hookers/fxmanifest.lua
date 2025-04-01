fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Roda Team'
description 'Roda Hooks'
version '1.0.0'

client_scripts {
  "@vrp/lib/utils.lua",
  'client/*.lua',
  'client/modules/*.lua'
}

shared_scripts {
  'Config.lua'
}

server_scripts {
  "@vrp/lib/utils.lua",
  'server/*.lua'
}

ui_page 'web/build/index.html'

files {
  'web/build/*.html',
  'web/build/assets/*.css',
  'web/build/assets/*.js',
  'locales/*.json'
}