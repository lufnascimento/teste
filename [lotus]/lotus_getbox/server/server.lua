local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
vRPclient = Tunnel.getInterface('vRP')

ServerAPI = {}
Tunnel.bindInterface(GetCurrentResourceName(), ServerAPI)
ClientAPI = Tunnel.getInterface(GetCurrentResourceName())

local activeEvents = {}
local eventId = 0

local function generateRandomCoords()
    local randomX = math.random(Config.CoordsRange.MinX, Config.CoordsRange.MaxX)
    local randomY = math.random(Config.CoordsRange.MinY, Config.CoordsRange.MaxY)
    return vec3(randomX, randomY, 0.0)
end

local function grantReward(eventId, userId)
    if not activeEvents[eventId] or not activeEvents[eventId].isActive then
        return false
    end

    activeEvents[eventId].isActive = false
    exports.lotus_box:addBox(userId, 'crate_natal')
    vRP.sendLog('https://ptb.discord.com/api/webhooks/1317208464010776646/CiYTgrFDw0nGwqu5lAlvW4RCZF_tItBFblG_rdYLQO1an7cKVvMlG0-1mkSBVBaeDxfV', 'USUARIO '..userId..' COLETOU A CAIXA DE NATAL')
    return true
end

local function startEvent()
    local coords = generateRandomCoords()

    eventId = eventId + 1
    activeEvents[eventId] = {
        coords = coords,
        isActive = true,
    }

    ClientAPI.broadcastEvent(-1, eventId, coords)
    TriggerClientEvent('Notify', -1, 'aviso', 'Uma nova caixa foi criada! Abra o mapa e colete antes de todo mundo!')
end

function ServerAPI.collectReward(eventId)
    local source = source
    local userId = vRP.getUserId(source)
    if not userId or not activeEvents[eventId] then return end

    for _, perm in ipairs(Config.BlockedPerms) do
        if vRP.hasPermission(userId, perm) then
            TriggerClientEvent('Notify', source, 'negado', 'Você não pode coletar a caixa com esse privilégio.')
            return
        end
    end

    local playerCoords = GetEntityCoords(GetPlayerPed(source))
    local distance = #(playerCoords.xy - activeEvents[eventId].coords.xy)

    if distance > 20.0 then
        print('Suspeita de trapaça: coleta à distância. ID: ' .. userId .. ', Distância: ' .. distance)
        return
    end

    if grantReward(eventId, userId) then
        activeEvents[eventId] = nil
        ClientAPI.removeEvent(-1, eventId)
        TriggerClientEvent('Notify', source, 'sucesso', 'Você coletou a caixa com sucesso!')
    end
end

RegisterCommand('starteventbox', function(source, args)
    if source ~= 0 then
        return
    end

    startEvent()
end)

AddEventHandler('vRP:playerSpawn',function(userId, source)
    for id, event in pairs(activeEvents) do 
        ClientAPI.broadcastEvent(source, id, event.coords)
        TriggerClientEvent('Notify', source, 'aviso', 'Uma nova caixa foi criada! Abra o mapa e colete antes de todo mundo!')
    end
end)

AddEventHandler('onResourceStop',function(res)
    if res == GetCurrentResourceName() then
        for id, event in pairs(activeEvents) do
            ClientAPI.removeEvent(-1, id)
        end
    end
end)

CreateThread(function()
    while true do
        local currentTime = os.date('%H:%M')
        for _, scheduledTime in ipairs(Config.ScheduleTimes) do
            if scheduledTime == currentTime then
                startEvent()
                break
            end
        end
        Wait(60000)
    end
end)