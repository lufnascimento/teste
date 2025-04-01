shared_script '@likizao_ac/client/library.lua'


fx_version 'cerulean'
game 'gta5'

lua54 'yes'
author 'Feijonts'

shared_scripts {
    '@vrp/lib/utils.lua',
    'shared/*.lua'
}

client_scripts {
    'client/*.lua'
}

server_scripts {
    'server/*.lua',
}