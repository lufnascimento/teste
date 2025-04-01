-- Evento acionado ao digitar o comando para abrir o menu de criação de blips. ao confirmar a criação, esse evento verifica novamente a função Config.blipCreatePermission().
RegisterNetEvent("dk_lapdance/toggleBlipCreation")
AddEventHandler("dk_lapdance/toggleBlipCreation", function()
    exports["dk_lapdance"]:toggleBlipsList()
end)