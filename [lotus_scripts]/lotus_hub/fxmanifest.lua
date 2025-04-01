shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

ui_page 'web/build/index.html'
files {
    'web/build/*',
    'web/build/**/*',
}

shared_scripts { '@vrp/lib/utils.lua', 'shared/*' }

client_scripts {
    'client/main.lua',
    'client/modules/*',
}

server_scripts {
    'server/query.lua',
    'server/main.lua',
    'server/modules/*'
}