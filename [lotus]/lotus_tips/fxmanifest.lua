shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
lua54 'yes'
game 'gta5'

name 'lotus_tips'
author 'boynull'

shared_scripts {'@vrp/lib/utils.lua', 'shared/**'}

server_scripts {"server/server.lua"}

client_scripts {"client/client.lua"}

ui_page 'web/build/index.html'

files {'web/**/*'}
