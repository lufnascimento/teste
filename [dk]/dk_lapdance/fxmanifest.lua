fx_version 'adamant'
game 'gta5'

author 'potter7k'
description 'Scripts desenvolvidos por DK Development. Discord: https://discord.gg/NJjUn8Ad3P'

ui_page 'web/index.html'

dependencies {
    'dk_snippets'
}

-- DEPENDENCIAS DK_SNIPPETS
shared_scripts {
    '@dk_snippets/src/shared/callbacks.lua',
    '@dk_snippets/src/shared/cooldowns.lua',
    '@dk_snippets/src/shared/utils.lua'
}
server_scripts {
    '@dk_snippets/src/server/json.lua'
}
-- 

shared_scripts {
    'config/shared/*'
}

server_scripts {
    'src/server.lua',
    'config/server/*'
}

client_scripts {
    'src/client.lua',
    'config/client/*'
}

files {
    'web/*','web/**/*'
}