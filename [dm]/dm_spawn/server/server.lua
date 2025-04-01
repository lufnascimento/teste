local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
serverAPI = {}
Tunnel.bindInterface("lotus_login", serverAPI)

-- Guarda as coordenadas de spawn e a configuração inicial
local spawnLocations = {
    ["Paleto"] = vec3(-781.29, 5562.9, 33.33),
    ["Hospital"] = vec3(-485.67, -359.36, 34.49),
    ["Vermelho"] = vec3(-340.49, -876.19, 31.07),
    ["Garagem Praça"] = vec3(59.11, -866.72, 30.55),
    ["Delegacia"] = vec3(-1594.07, 172.29, 59.08),
}

-- Eventos de carregamento e configuração de interface
function serverAPI.getPrimaryName()
    local source = source
    local user_id = vRP.getUserId(source)
    return vRP.getUserIdentity(user_id).name
end

function serverAPI.inFaction()
    local source = source
    local user_id = vRP.getUserId(source)
    -- Exemplo de verificação se o jogador está em uma facção, substitua conforme sua lógica de facções
    return vRP.hasGroup(user_id, "faction_member")
end

function serverAPI.spawnFaction()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.hasGroup(user_id, "faction_member") then
        vRPclient.teleport(source, { -1584.47, 127.99, 61.66 }) -- Exemplo de posição de facção
        return true
    end
    return false
end

-- Gerenciamento do evento para abrir o menu de login
RegisterServerEvent("vrp:ToogleLoginMenu")
AddEventHandler("vrp:ToogleLoginMenu", function()
    local source = source
    TriggerClientEvent("vrp:ToogleLoginMenu", source)
end)

-- Função para lidar com teleportação para a localização escolhida pelo jogador
RegisterServerEvent("lotus_login:chooseSpawn")
AddEventHandler("lotus_login:chooseSpawn", function(location)
    local source = source
    local user_id = vRP.getUserId(source)
    if spawnLocations[location] then
        vRPclient.teleport(source, { spawnLocations[location].x, spawnLocations[location].y, spawnLocations[location].z })
    end
end)
