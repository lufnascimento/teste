shared_script '@likizao_ac/client/library.lua'


fx_version "bodacious"
game "gta5"
lua54 'yes'

shared_script "@vrp/lib/utils.lua"

client_scripts {
   "client.lua"
}

server_scripts {
   "server.lua",
}
