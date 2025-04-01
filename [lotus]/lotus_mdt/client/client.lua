local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')

ClientAPI = {}
Tunnel.bindInterface(GetCurrentResourceName(), ClientAPI)
ServerAPI = Tunnel.getInterface(GetCurrentResourceName())

local tabletProp = nil
local animPlaying = false

function playTabletAnimation()
    if not animPlaying then
        RequestAnimDict('amb@code_human_in_bus_passenger_idles@female@tablet@idle_a')
        while not HasAnimDictLoaded('amb@code_human_in_bus_passenger_idles@female@tablet@idle_a') do
            Wait(10)
        end

        local playerPed = PlayerPedId()
        local propName = 'prop_cs_tablet'
        local boneIndex = GetPedBoneIndex(playerPed, 60309)

        tabletProp = CreateObject(GetHashKey(propName), 0, 0, 0, true, true, false)
        AttachEntityToEntity(tabletProp, playerPed, boneIndex, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)

        TaskPlayAnim(playerPed, 'amb@code_human_in_bus_passenger_idles@female@tablet@idle_a', 'idle_b', 8.0, -8.0, -1, 49, 0, false, false, false)
        animPlaying = true
    end
end

function stopTabletAnimation()
    if animPlaying then
        ClearPedTasks(PlayerPedId())
        DeleteObject(tabletProp)
        tabletProp = nil
        animPlaying = false
    end
end

function ClientAPI.openOrganizationMenu(data)
    SendNUIMessage({
        action = 'open',
        data = data
    })
    SetNuiFocus(true, true)
    playTabletAnimation()
end

function closeNui()
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'close' })
    stopTabletAnimation()
end

RegisterNUICallback('getInitialInfos', function(data, cb)
    cb(ServerAPI.getOrganizationMembers())
end)

RegisterNUICallback('hideFrame', function(data, cb)
    closeNui()
    cb(true)
end)

RegisterNUICallback('getRolesToContract', function(data, cb)
    cb(ServerAPI.getRolesToContract())
end)