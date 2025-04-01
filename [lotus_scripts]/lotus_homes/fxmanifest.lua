shared_script '@likizao_ac/client/library.lua'

fx_version   'bodacious'
lua54        'yes'
game         'gta5'

dependencies {
    '/onesync',
}
this_is_a_map "yes"

shared_scripts {
    '@vrp/lib/utils.lua',
    'configs/shared.*.lua'
}

server_scripts {
	"@oxmysql/lib/MySQL.lua",
    "server/main.lua",
    "server/modules/**",
}

client_scripts {
    "client/main.lua",
    "client/router.lua",
    "client/utils/**",
    "client/modules/**",
}

ui_page 'web/build/index.html'

files {
    'web/build/**',
}
