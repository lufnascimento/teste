-- shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
game 'gta5'
lua54 'yes'

ui_page "nui/build/index.html"
files { "nui/build/*", "nui/build/**/*" }

shared_scripts { '@vrp/lib/utils.lua', 'lib/*.lua', 'config.lua' }
client_scripts {'@vrp/lib/utils.lua', 'client/**/*.lua'}
server_scripts {'@vrp/lib/utils.lua', 'server/**/*.lua'}