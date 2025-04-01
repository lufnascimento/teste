--- Comando para criar/remover blips
---@param source integer
---@param args table
RegisterCommand("ldadmin", function(source, args)
    if not Config.blipCreatePermission(source) then
        return
    end

    TriggerClientEvent("dk_lapdance/toggleBlipCreation", source)
end)