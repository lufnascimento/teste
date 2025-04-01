Houses = {
    cache = {},
    houseId = nil,
    ownedHomes = {},
}
function Houses.Update(action, ...)
    -- receive less events
    local args = {...}
    print("(Houses.Update) EVENTO RECEBIDO")
    print(json.encode(args))
    if action == "oneUpdate" then
        Houses.cache[args[1]] = args[2]
    elseif action == "allUpdate" then
        Houses.cache = args[1]
    end
end

local function teleportPlayer(coords)
    StartPlayerTeleport(PlayerId(), coords.x, coords.y, coords.z, coords.w or 100.0, false, false, false)
    while IsPlayerTeleportActive() do
        Wait(0)
    end
    print('Teleportado')
end

local CoordsProps = {
    startCoords = {
        draw = function(coords)
            DrawText3Ds(coords.x, coords.y, coords.z+0.5, "~g~[E]~w~ Sair")
            DrawMarker(21,coords.x, coords.y, coords.z-0.7,0,0,0,0,0,130.0,0.5,1.0,0.5, 255,0,0,180 ,1,0,0,1)
        end,
        action = {"leave"},
        response = function(res)
            teleportPlayer(Houses.cache[Houses.houseId][2])
            Houses.houseId = nil
        end
    },
    chestCoords = {
        draw = function(coords)
            DrawMarker(30,coords.x, coords.y, coords.z-0.3,0,0,0,0,0,130.0, 0.5,1.0,0.5, 0,0,255,180 ,1,0,0,1)
        end,
        action = {"openChest"},
        response = function(res)
            print('Abrindo cofrinho')
        end
    },
    skinshopCoords = {
        draw = function(coords)
            DrawMarker(30,coords.x, coords.y, coords.z-0.3,0,0,0,0,0,130.0, 0.5,1.0,0.5, 0,0,255,180 ,1,0,0,1)
        end,
        response = function(res)
            exports["lotus_skinshop"]:openShop()
            print('Abrindo skinshop')
        end
    }
}

function Houses:setInsideHome(houseId, data)
    self.houseId = houseId
    self.houseData = data
    print(json.encode(self.houseData))
    print(self.houseId)
    CreateThread(function()
     
        while self.houseId do
            local sleep = 1000
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local homeProperties = self:getHomeProperties(houseId)
            if homeProperties.type == "home" then
                local distance = #(coords - vec3(self.houseData.coords.startCoords.x, self.houseData.coords.startCoords.y, self.houseData.coords.startCoords.z))
                if (distance < 3.0) then
                    local lockedProps = {
                        label = homeProperties.locked and "~r~Fechada" or "~g~Aberta",
                        actionLabel = homeProperties.locked and "~r~Destrancar" or "~g~Trancar",
                        markerColor = homeProperties.locked and {255,0,0} or {0,255,0},
                    }
                    DrawText3Ds(self.houseData.coords.startCoords.x, self.houseData.coords.startCoords.y, self.houseData.coords.startCoords.z+0.60, "~y~[L]~w~ | "..lockedProps.actionLabel)
                    if IsControlJustPressed(0, 182) then
                        Remote["unlock"](houseId)
                        Wait(1000)
                        homeProperties = Houses:getHomeProperties(houseId)
                    end
                end
            end
            for k,v in pairs(self.houseData.coords) do
                local dist = #(coords - vec3(v.x, v.y, v.z))
                if dist < 3.0 and CoordsProps[k] then
                    sleep = 1
                    CoordsProps[k].draw(v)
                    if IsControlJustPressed(0, 38) then
                        if CoordsProps[k].action then
                            print("Acionando ação: " .. table.unpack(CoordsProps[k].action))
                            local res, err = Remote["homeAction"](self.houseId, table.unpack(CoordsProps[k].action))
                            if not res then
                                print(err)
                                Wait(1000)
                            else
                                CoordsProps[k].response(res)
                            end
                        else
                            CoordsProps[k].response()
                        end
                    end
                   
                end
            end
            Wait(sleep)
        end
    end)
end




function Houses:getNearestHome(coords)
    local nearest = nil
    local distance = 0
    for k, v in pairs(self.cache) do
        local dist = #(coords - v[2])
        if not nearest or dist < distance then
            nearest = k
            distance = dist
        end
    end
    return nearest, distance
end

local DISTANCE_MARKER_THRESHOLD = 4.0
nearestHomeId = 0
function Houses:getHomeProperties(houseId)
    local home = Houses.cache[houseId]
    if not home then return end
    nearestHomeId = houseId
    return {
        locked = home[1],
        enterCoords = home[2],
        price = home[3],
        type = home[4],
        interior = home[5],
        chestWeight = home[6],
        isAvailable = home[7],
    }
end

RegisterNetEvent("lotus_homes:updateInternalCoords", function(houseId, key, coords)
    print("(lotus_homes:updateInternalCoords) EVENTO RECEBIDO")
    print(json.encode(coords))
    while not Houses.houseData do
        Wait(1000)
    end
    Houses.houseData.coords[key] = coords
    print(json.encode(Houses.houseData.coords))
end)

RegisterCommand('casas', function()
    _G.Homes_Get = Remote["common/getHomes"]()
    if not _G.Homes_Get or (not next(_G.Homes_Get)) then
        return
    end
    SendNUIMessage({
        action = 'open:edit'
    })
    SetNuiFocus(true, true)
end, false)

RegisterCommand('mansoes', function()
    _G.Mansions_Get = Remote["mansions/get"]()
    if not _G.Mansions_Get or (not next(_G.Mansions_Get)) then
        return
    end
    SendNUIMessage({
        action = 'open:editMansions'
    })
    SetNuiFocus(true, true)
end, false)


RegisterNetEvent("lotus_homes:openAdminPanel", function(type)
    if type == "mansions" then
        _G.mansionInstance = MansionCreator:new(function(coords)
            print(json.encode(coords))
            if not coords then
                print("Não temos coordenadas para criar a mansão")
                return
            end
            SendNUIMessage({
                action = 'open:mansions',
            })
            SetNuiFocus(true, true)
            SetNuiFocusKeepInput(true)
        end)
        mansionInstance:start()
        return
    end
    SendNUIMessage({
        action = 'open:'..type
    })
    SetNuiFocus(true, true)
end)

function Houses:loadHome(homeProperties, nearest)
    local interiorProps = Utils.getInteriorProps(homeProperties.type, homeProperties.interior)
    if not interiorProps then
        print("Erro ao pegar as propriedades do interior")
        Wait(1000)
    else
        Houses:setInsideHome(nearest, interiorProps)
        teleportPlayer(interiorProps.coords.startCoords)
    end
end


CreateThread(function()
    while true do
        local sleep = 1000
        local coords = GetEntityCoords(PlayerPedId())
        local nearest, distance = Houses:getNearestHome(coords)
        if nearest and distance < DISTANCE_MARKER_THRESHOLD then
            while not Houses.houseId do
                local homeProperties = Houses:getHomeProperties(nearest)
                coords = GetEntityCoords(PlayerPedId())
                distance = #(coords - homeProperties.enterCoords)
                if distance > DISTANCE_MARKER_THRESHOLD then
                    break
                end
                if homeProperties.isAvailable then
                    local enableEnter = homeProperties.type == "apartment"
                    local text = "~w~[PROPRIEDADE: ~g~"..nearest.."~w~]\n~w~[~g~G~w~] Ver propriedade"
                    if enableEnter then
                        text = text .. "\n~w~[~g~E~w~] Entrar"
                    end
                    DrawText3Ds(homeProperties.enterCoords.x, homeProperties.enterCoords.y, homeProperties.enterCoords.z+0.5, text)
                    DrawMarker(21,homeProperties.enterCoords.x, homeProperties.enterCoords.y, homeProperties.enterCoords.z-0.7,0,0,0,0,0,130.0,0.5,1.0,0.5, 0,0,255,180 ,1,0,0,1)
                    if enableEnter then
                        if IsControlJustPressed(0, 38) and distance <= 2.0 then
                            print("Entrou na propriedade")
                            local res, err = Remote["enter"](nearest)
                            if not res then
                                print('Erro ao entrar na propriedade')
                                print(err)
                            else
                                Houses:loadHome(homeProperties, nearest)
                            end
                        end
                    end
                    if IsControlJustPressed(0, 47) and distance <= 2.0 then
                        print("Ver propriedade")
                        SendNUIMessage({
                            action = "open:hoverfy",
                        })
                        SetNuiFocus(1, 1)
                    end
                else
                    if homeProperties.type == "apartment" then
                        DrawText3Ds(homeProperties.enterCoords.x, homeProperties.enterCoords.y, homeProperties.enterCoords.z+0.5, "~w~[PROPRIEDADE: ~g~"..nearest.."~w~]\n[~g~E~w~] Entrar")
                    elseif homeProperties.type == "home" then
                        local lockedProps = {
                            label = homeProperties.locked and "~r~Fechada" or "~g~Aberta",
                            actionLabel = homeProperties.locked and "~r~Destrancar" or "~g~Trancar",
                            markerColor = homeProperties.locked and {255,0,0} or {0,255,0},
                        }
                        DrawMarker(21,homeProperties.enterCoords.x, homeProperties.enterCoords.y, homeProperties.enterCoords.z-0.7,0,0,0,0,0,130.0,0.5,1.0,0.5, lockedProps.markerColor[1],lockedProps.markerColor[2],lockedProps.markerColor[3],180 ,1,0,0,1)
                        DrawText3Ds(homeProperties.enterCoords.x, homeProperties.enterCoords.y, homeProperties.enterCoords.z+0.5, "~w~[PROPRIEDADE: ~g~"..nearest.."~w~]\n[~g~E~w~] Entrar\n[~g~L~w~] " .. lockedProps.actionLabel.. "\n~w~" .. lockedProps.label .. "~w~")
                       
                        if IsControlJustPressed(0, 182) and distance <= 2.0 then
                            Remote["unlock"](nearest)
                            Wait(1000)
                            homeProperties = Houses:getHomeProperties(nearest)
                        end
                    end
                    if IsControlJustPressed(0, 38) and distance <= 2.0 then
                        print("Entrou na propriedade")
                        local res, err = Remote["enter"](nearest)
                        if not res then
                            print('Erro ao entrar na propriedade')
                            print(err)
                        else
                            Houses:loadHome(homeProperties, nearest)
                        end
                    end
                end
               
                Wait(0)
            end
    
        end
        Wait(sleep)
    end
end)


CreateThread(function()
    SetNuiFocus(1, 1)
    Wait(1000)
    SendNUIMessage({
        action = "close",
    })
    SetNuiFocus(0, 0)
end)

---
-- Handlers
---
RegisterNetEvent("lotus_homes:update", Houses.Update)
