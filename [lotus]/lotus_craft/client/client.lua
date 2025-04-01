local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')

ClientAPI = {}
Tunnel.bindInterface(GetCurrentResourceName(), ClientAPI)
ServerAPI = Tunnel.getInterface(GetCurrentResourceName())

local isMenuOpen = false
local blipIdOpen = nil
local MIN_DISTANCE = 3.0

local pendingCallbacks = {}


local function openMenu(blipId)
    blipIdOpen = blipId
    isMenuOpen = true
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'opened',
        data = true
    })
end

local function closeMenu()
    isMenuOpen = false
    blipIdOpen = nil
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = 'opened',
        data = false
    })
end

local function getNearestBlip(coords)
    local nearestBlip = nil
    local nearestDistance = 10.0
    for i=1, #Config.Coords do
        local blip = Config.Coords[i]
        for _, coord in ipairs(blip.coords) do
            local distance = #(coords - coord)
            if distance <= MIN_DISTANCE and (not nearestBlip or distance < nearestDistance) then
                nearestBlip = i
                nearestDistance = distance
            end
        end
    end
    return nearestBlip
end

RegisterNUICallback('Close', function(data, cb)
    closeMenu()
    cb(true)
end)

RegisterNUICallback('GetProductions', function(data, cb)
    if not isMenuOpen then
        cb({})
        closeMenu()
        return
    end
    if pendingCallbacks["getProductions"] then
        return cb({})
    end
    pendingCallbacks["getProductions"] = true
    Wait(math.random(50, 500))
    local productions = ServerAPI.getProductions(blipIdOpen)
    pendingCallbacks["getProductions"] = false
    if not productions then
        cb({})
        closeMenu()
        return
    end

    cb(productions)
end)

RegisterNUICallback('ProduceItem', function(data, cb)
    if not isMenuOpen then
        cb(false)
        closeMenu()
        return
    end
    if pendingCallbacks["produceItem"] then
        return cb({})
    end
    pendingCallbacks["produceItem"] = true
    SetNuiFocus(false, false)
    Wait(math.random(50, 500))
    local status = ServerAPI.produceItem(blipIdOpen, data)
    SetNuiFocus(true, true)
    pendingCallbacks["produceItem"] = false
    if not status then
        cb(false)
        return
    end
    cb(true)
end)

RegisterNUICallback('RemoveItemFromQueue', function(data, cb)
    if not isMenuOpen then
        cb(false)
        closeMenu()
        return
    end

    if pendingCallbacks["removeItemFromQueue"] then
        return cb(false)
    end
    pendingCallbacks["removeItemFromQueue"] = true
    Wait(math.random(50, 500))
    local status = ServerAPI.removeItemFromQueue(blipIdOpen, data)
    pendingCallbacks["removeItemFromQueue"] = false
    
    if not status then
        cb(false)
        return
    end
    cb(true)
end)

RegisterNUICallback('GetStorage', function(data, cb)
    if not isMenuOpen then
        cb({})
        closeMenu()
        return
    end

    local storage = ServerAPI.getStorage(blipIdOpen)
    if not storage then
        cb({})
        closeMenu()
        return
    end

    cb(storage)
end)

RegisterNUICallback('SaveAll', function(data, cb)
    if not isMenuOpen then
        cb(false)
        closeMenu()
        return
    end
    if pendingCallbacks["saveAll"] then
        return cb(false)
    end
    pendingCallbacks["saveAll"] = true
    Wait(math.random(50, 500))
    local status = ServerAPI.saveAll(blipIdOpen)
    pendingCallbacks["saveAll"] = false
    if not status then
        cb(false)
        return
    end
    cb(true)
end)

RegisterNUICallback('SaveItem', function(data, cb)
    if not isMenuOpen then
        cb(false)
        closeMenu()
        return
    end
    if pendingCallbacks["saveItem"] then
        return cb(false)
    end
    pendingCallbacks["saveItem"] = true
    Wait(math.random(50, 500))
    local status = ServerAPI.saveItem(blipIdOpen, data)
    pendingCallbacks["saveItem"] = false
    if not status then
        cb(false)
        return
    end
    cb(true)
end)

RegisterNUICallback('GetRanking', function(data, cb)
    if not isMenuOpen then
        cb({})
        closeMenu()
        return
    end

    local ranking = ServerAPI.getRanking(blipIdOpen)
    if not ranking then
        cb({})
        closeMenu()
        return
    end

    cb(ranking)
end)

RegisterNUICallback('selectedFarm', function(data, cb)
    if not isMenuOpen then
        cb(false)
        closeMenu()
        return
    end
    
    cb(true)
    closeMenu()
    TriggerEvent('routes:initialize')
end)

RegisterNUICallback('selectedDrugs', function(data, cb)
    if not isMenuOpen then
        cb(false)
        closeMenu()
        return
    end
    
    cb(true)
    closeMenu()
    TriggerEvent('drugs:openRoutes')
end)

CreateThread(function()
    while true do
        local waitTime = 1000
        if not isMenuOpen then
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            local nearestBlip = getNearestBlip(coords)

            if nearestBlip then
                waitTime = 0
                local blip = Config.Coords[nearestBlip]
                for _, coord in ipairs(blip.coords) do
                    local distance = #(coords - coord)
                    if distance <= MIN_DISTANCE then
                        DrawMarker(27, coord.x, coord.y, coord.z - 0.95, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 255, 0, 100, false, false, 2, false, nil, nil, false)
                    end
                end
                if IsControlJustPressed(0, 38) and ServerAPI.hasMinPermission(nearestBlip) then
                    openMenu(nearestBlip)
                end
            end
        end
        Wait(waitTime)
    end
end)

function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,100)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 400
	DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,140)
end

function DrawText3DAlways(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    if not onScreen then
        return
    end

    local playerCoords = GetEntityCoords(PlayerPedId())
    local distance = #(playerCoords - vector3(x, y, z))
    local scale = 1.0 / math.max(distance, 1.0) * 2.0
    scale = math.min(scale, 0.35)
    scale = math.max(scale, 0.2)

    SetTextScale(scale, scale)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextOutline()
    SetTextCentre(true)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(_x, _y)
end

RegisterNetEvent('craft:showBlips', function(org)
    CreateThread(function()
        local orgIndex
        for i=1, #Config.Coords do
            local table = Config.Coords[i]
            if table.name == org then
                orgIndex = i
                break
            end
        end

        if not orgIndex then return end

        local coords = Config.Coords[orgIndex].coords
        if not coords then return end
        coords = coords[1]
        local endTime = GetGameTimer() + (1000 * 60 * 2)
        while GetGameTimer() < endTime do
            Wait(0)
            DrawText3DAlways(coords.x, coords.y, coords.z + 1.0, "Craft")
        end
    end)
end)