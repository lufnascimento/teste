
fx_version "cerulean"
game "gta5"
lua54 'yes'

shared_script { '@vrp/lib/utils.lua', "lib/*.lua", "config.lua" }
shared_script { '@vrp/lib/utils.lua', "lib/*.lua", "doors_config.json" }
client_scripts {
    "doors_client.lua"
}


files {
    "doors_config.json"
}
          

server_scripts {
    "doors_server.lua"
}