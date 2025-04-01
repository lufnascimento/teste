local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')

ClientAPI = {}
Tunnel.bindInterface(GetCurrentResourceName(), ClientAPI)
ServerAPI = Tunnel.getInterface(GetCurrentResourceName())

local activeEvents = {}

local function spawnCrate(coords)
    RequestModel(Config.PropModel)
    while not HasModelLoaded(Config.PropModel) do
        Wait(1000)
    end

    local _, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, 99999.0, 1)
    local object = CreateObject(Config.PropModel, coords.x, coords.y, groundZ, false, true, false)
    SetEntityAsMissionEntity(object, true)
    FreezeEntityPosition(object, true)
    PlaceObjectOnGroundProperly(object)
    return object
end

local function createBlips(coords)
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    local radiusBlip = AddBlipForRadius(coords.x, coords.y, coords.z, 100.0)

    SetBlipSprite(blip, 306)
    SetBlipColour(blip, 47)
    SetBlipScale(blip, 1.0)
    SetBlipColour(radiusBlip, 1)
    SetBlipAlpha(radiusBlip, 125)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString('Evento de Natal')
    EndTextCommandSetBlipName(blip)

    return { blip = blip, radiusBlip = radiusBlip }
end

function ClientAPI.broadcastEvent(eventId, coords)
    activeEvents[eventId] = { coords = coords, blips = createBlips(coords), crate = nil }
    SendNUIMessage({ type = 'startEvent' })
end

function ClientAPI.removeEvent(eventId)
    if not activeEvents[eventId] then return end

    if DoesEntityExist(activeEvents[eventId].crate) then
        DeleteObject(activeEvents[eventId].crate)
    end
    
    if DoesBlipExist(activeEvents[eventId].blips.blip) then
        RemoveBlip(activeEvents[eventId].blips.blip)
    end
    
    if DoesBlipExist(activeEvents[eventId].blips.radiusBlip) then
        RemoveBlip(activeEvents[eventId].blips.radiusBlip)
    end
    activeEvents[eventId] = nil
end

local function playCollectAnimation()
    RequestAnimDict('amb@medic@standing@tendtodead@idle_a')
    while not HasAnimDictLoaded('amb@medic@standing@tendtodead@idle_a') do
        Wait(1)
    end
    TaskPlayAnim(PlayerPedId(), 'amb@medic@standing@tendtodead@idle_a', 'idle_a', 8.0, -8.0, 5000, 1, 0, false, false, false)
    Wait(5000)
    ClearPedTasks(PlayerPedId())
end

local function attemptCollect(eventId)
    if not activeEvents[eventId] then return end
    playCollectAnimation()

    if GetEntityHealth(PlayerPedId()) > 101 and not IsPedInAnyVehicle(PlayerPedId()) and activeEvents[eventId] then
        ServerAPI.collectReward(eventId)
    end
end

CreateThread(function()
    while true do
        local waitTime = 1000
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        for eventId, eventData in pairs(activeEvents) do
            local distance = GetDistanceBetweenCoords(playerCoords, eventData.coords, false)
            
            if distance <= 100.0 then
                if not eventData.crate or not DoesEntityExist(eventData.crate) then
                    activeEvents[eventId].crate = spawnCrate(eventData.coords)
                end

                local crateCoords = GetEntityCoords(activeEvents[eventId].crate)
                local distToCrate = #(playerCoords - crateCoords)
                
                if distToCrate <= 2.5 then
                    waitTime = 0
                    DrawText3D(crateCoords.x, crateCoords.y, crateCoords.z, '~g~[E]~w~ para coletar a caixa')
                    
                    if IsControlJustPressed(0, 38) then
                        attemptCollect(eventId)
                    end
                end
            else
                if eventData.crate then
                    if DoesEntityExist(eventData.crate) then
                        DeleteObject(eventData.crate)
                    end

                    activeEvents[id].crate = nil
                end
            end
        end
        Wait(waitTime)
    end
end)

function DrawText3D(x, y, z, text)
    SetTextScale(0.45, 0.45)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    SetDrawOrigin(x, y, z, 0)
    DrawText(0.0, 0.0)
end