shared_script '@likizao_ac/client/library.lua'

fx_version "cerulean"
game "gta5"
author "_flaviin"

shared_script "@vrp/lib/utils.lua"

client_scripts {
  "client/*.lua"
}
server_scripts {
  "server/*.lua"
}

ui_page "web/index.html"

files {
  "/web/**/*"
}