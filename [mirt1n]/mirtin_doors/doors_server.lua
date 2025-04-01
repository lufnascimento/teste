-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy  = module("vrp","lib/Proxy")
local Tools  = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface(GetCurrentResourceName(),src)
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local doorslock = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- tryLockDoor
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryLockDoor")
AddEventHandler("tryLockDoor", function(id)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if doors[id] ~= nil then
            local door = doors[id]
            if vRP.hasPermission(user_id, doors[id].perm) then
                local state = doors[id].lock

                if doorslock[id] ~= nil then
                    state = doorslock[id]
                end

                doorslock[id] = not state

                TriggerClientEvent("door", -1, id, doorslock[id])
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- vRP:playerSpawn
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
    TriggerClientEvent("doors:load", -1, doorslock)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- reloaddoors
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("reloaddoors", function(source, ...)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "admin.permissao") then
            TriggerClientEvent("doors:load", -1, doorslock)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- adddoor
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("addport", function(source, ...)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "admin.permissao") then
            local data = vCLIENT.rayCastDoor(source)
            if data then
                local id = #doors + 1
                local text = "["..id.."] = {\n"
                text = text .. "    isGate = false,\n"
                text = text .. "    dist = 2.0,\n"
                text = text .. "    text = true,\n"
                text = text .. "    lock = true,\n"
                text = text .. "    hash = "..data.hash..",\n"
                text = text .. "    ['x'] = "..data.coords.x..",\n"
                text = text .. "    ['y'] = "..data.coords.y..",\n"
                text = text .. "    ['z'] = "..data.coords.z..",\n"
                text = text .. "    perm = 'admin.permissao'\n"
                text = text .. "}"

                vRPclient.prompt(source, 'Porta: ', text)
            end
        end
    end
end)





