shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Feijonts <https://github.com/joaowcitino>'
version '1.0.0'
description 'Getbox script for Lotus'
this_is_a_map 'yes'

ui_page 'web/index.html'

shared_script {
    '@vrp/lib/Utils.lua',
    'shared/*.lua',
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

files {
    'stream/nt_acaradohan.ydr',
    'stream/nt_acaradohan.ytyp',
    'web/index.html',
    'web/assets/*'
}

data_file 'DLC_ITYP_REQUEST' 'stream/nt_acaradohan.ytyp'