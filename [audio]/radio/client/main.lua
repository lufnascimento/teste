local Tunnel = module('vrp','lib/Tunnel')
local Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
vSERVER = Tunnel.getInterface('radio')


local privateChannel = {
  {channel = 1, perm = "perm.santos"},
  {channel = 7, perm = "perm.anonymous"},
  {channel = 10, perm = "perm.magnatas"},
  {channel = 11, perm = "perm.egito"},
  {channel = 12, perm = "perm.egito"},
  {channel = 13, perm = "perm.egito"},
  {channel = 15, perm = "perm.milicia"},
  {channel = 22, perm = "perm.pcc"},
  {channel = 33, perm = "perm.korea"},
  {channel = 34, perm = "perm.korea"},
  {channel = 77, perm = "perm.bahamas"},
  {channel = 100, perm = "perm.militar"},
  {channel = 101, perm = "perm.bope"},
  {channel = 102, perm = "perm.choque"},
  {channel = 103, perm = "perm.policiacivil"},
  {channel = 104, perm = "perm.pf"},
  {channel = 105, perm = "perm.prf"},
  {channel = 106, perm = "perm.exercito"},
  {channel = 112, perm = "perm.core"},
  {channel = 123, perm = "perm.cot"},
  {channel = 157, perm = "perm.santos"},
  {channel = 179, perm = "perm.cv"},
  {channel = 244, perm = "perm.turquia"},
  {channel = 534, perm = "perm.colombia"},
  {channel = 777, perm = "perm.anonymous"},
}

local GuiOpened = false

RegisterCommand("radio", function()
  if GetEntityHealth(PlayerPedId()) <= 105 then return end
  if vSERVER.hasRadio() then
    openGui()
   else
     TriggerEvent("Notify","negado","Você não pode utilizar um radio agora ou você não possui um radio.")
   end
end)

exports('joinChannel', function(code)
  if not code then
    return
  end
	if not checkPermission({ channel = code }) then return false end
  
	TriggerEvent("lotus-hud:setRadioFrequency", code)
	exports["pma-voice"]:setRadioChannel(code)
	exports["pma-voice"]:setVoiceProperty('radioEnabled',true)
end)

RegisterNetEvent('radioGui')
AddEventHandler('radioGui', function()
  if GetEntityHealth(PlayerPedId()) <= 105 then return end
  if vSERVER.hasRadio() then
    openGui()
  else
    TriggerEvent("Notify","negado","Você não pode utilizar um radio agora ou você não possui um radio.")
  end
  Wait(1)
end)

RegisterNetEvent('ChannelSet')
AddEventHandler('ChannelSet', function(chan)
  SendNUIMessage({set = true, setChannel = chan})
end)

RegisterNetEvent('radio:resetNuiCommand')
AddEventHandler('radio:resetNuiCommand', function()
    SendNUIMessage({reset = true})
end)

function checkPermission(data)
  for k, v in pairs(privateChannel) do
    local selectedChannel = parseInt(data.channel) or nil
    if selectedChannel then
      if parseInt(v.channel) == selectedChannel then
        if not vSERVER.hasPermission(v.perm, v.service or nil) then
          TriggerEvent("Notify","negado","Você não tem permissão para entrar nessa frequencia.")
          return false
        end
      end
    end
  end
  return true
end

function openGui()
  if not GuiOpened then
    GuiOpened = true
    SetNuiFocus(true,true)
    SendNUIMessage({open = true})
  else
    GuiOpened = false
    SetNuiFocus(false,false)
    SendNUIMessage({open = false})
  end
  TriggerEvent("animation:radio",GuiOpened)
  --ExecuteCommand("lotus-hud")
end


RegisterNUICallback('click', function(data, cb)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
end)

RegisterNUICallback('volumeRadio', function(data, cb)
  MumbleSetVolumeOverride(PlayerPedId(), data.volume + 0.0)
  PlaySound(-1, "NAV_UP_DOWN", "HUD_FRONTEND_DEFAULT_SOUNDSET", 0, 0, 1)
end)

local volume = 0.0

RegisterNUICallback('volumeUp', function(data, cb)
  if volume <= 0.9 then
    volume = volume + 0.1
    MumbleSetVolumeOverride(PlayerPedId(), volume)
  else
  end
end)

RegisterNUICallback('volumeDown', function(data, cb)
  if volume >= 0.0 then
    volume = volume - 0.1
    MumbleSetVolumeOverride(PlayerPedId(), volume)
  else
  end
end)

RegisterNUICallback('cleanClose', function(data, cb)
  TriggerEvent("InteractSound_CL:PlayOnOne","radioclick",0.6)
  GuiOpened = false
  SetNuiFocus(false,false)
  SendNUIMessage({open = false})
  TriggerEvent("animation:radio",GuiOpened)
end)

RegisterNUICallback('poweredOn', function(data, cb)
  if checkPermission(data) then
    TriggerEvent("InteractSound_CL:PlayOnOne","radioclick",0.6)
    local fuckingidiot = tonumber(data.channel)
    if fuckingidiot == nil then
      fuckingidiot = 0
    end
    local newChannel = fuckingidiot

    if fuckingidiot < 10 and fuckingidiot > 0 then
      newChannel = fuckingidiot
    end
    

    if newChannel == 0 then
      exports["pma-voice"]:removePlayerFromRadio()
      exports["pma-voice"]:setVoiceProperty('radioEnabled',false)
      TriggerEvent("lotus-hud:setRadioFrequency", 0)

      
    else
      TriggerEvent("lotus-hud:setRadioFrequency", parseInt(newChannel))
      exports["pma-voice"]:setRadioChannel(parseInt(newChannel))
      exports["pma-voice"]:setVoiceProperty('radioEnabled',true)
    end
  end

end)

RegisterNUICallback('poweredOff', function(data, cb)
  exports["pma-voice"]:removePlayerFromRadio()
  exports["pma-voice"]:setVoiceProperty('radioEnabled',false)
  TriggerEvent("lotus-hud:setRadioFrequency", 0)
end)

RegisterNUICallback('close', function(data, cb)
  if checkPermission(data) then
    TriggerEvent("InteractSound_CL:PlayOnOne","radioclick",0.6)
    local fuckingidiot = tonumber(data.channel)
    if fuckingidiot == nil then
      fuckingidiot = 0
    end
    local newChannel = fuckingidiot

    if fuckingidiot < 10 and fuckingidiot > 0 then
      newChannel = fuckingidiot
    end
    
    if newChannel == 0 then
      exports["pma-voice"]:removePlayerFromRadio()
      exports["pma-voice"]:setVoiceProperty('radioEnabled',false)
      TriggerEvent("lotus-hud:setRadioFrequency", 0)
    else
      TriggerEvent("lotus-hud:setRadioFrequency", newChannel)
      exports["pma-voice"]:setRadioChannel(parseInt(newChannel))
      exports["pma-voice"]:setVoiceProperty('radioEnabled',true)

    end

    GuiOpened = false
    SetNuiFocus(false,false)
    SendNUIMessage({open = false})
    TriggerEvent("animation:radio",GuiOpened)
    --ExecuteCommand("lotus-hud")
  end
end)



Citizen.CreateThread(function()

  while true do
    if GuiOpened then
      Citizen.Wait(1)
      DisableControlAction(0, 1, GuiOpened) -- LookLeftRight
      DisableControlAction(0, 2, GuiOpened) -- LookUpDown
      DisableControlAction(0, 14, GuiOpened) -- INPUT_WEAPON_WHEEL_NEXT
      DisableControlAction(0, 15, GuiOpened) -- INPUT_WEAPON_WHEEL_PREV
      DisableControlAction(0, 16, GuiOpened) -- INPUT_SELECT_NEXT_WEAPON
      DisableControlAction(0, 17, GuiOpened) -- INPUT_SELECT_PREV_WEAPON
      DisableControlAction(0, 99, GuiOpened) -- INPUT_VEH_SELECT_NEXT_WEAPON
      DisableControlAction(0, 100, GuiOpened) -- INPUT_VEH_SELECT_PREV_WEAPON
      DisableControlAction(0, 115, GuiOpened) -- INPUT_VEH_FLY_SELECT_NEXT_WEAPON
      DisableControlAction(0, 116, GuiOpened) -- INPUT_VEH_FLY_SELECT_PREV_WEAPON
      DisableControlAction(0, 142, GuiOpened) -- MeleeAttackAlternate
      DisableControlAction(0, 106, GuiOpened) -- VehicleMouseControlOverride
    else
      Citizen.Wait(20)
    end    
  end
end)

RegisterNetEvent('animation:radio')
AddEventHandler('animation:radio', function(enable)
  local lPed = PlayerPedId()
  inPhone = enable

  RequestAnimDict("cellphone@")
  while not HasAnimDictLoaded("cellphone@") do
    Citizen.Wait(0)
  end

  local intrunk = false
  if not intrunk then
    TaskPlayAnim(lPed, "cellphone@", "cellphone_text_in", 2.0, 3.0, -1, 49, 0, 0, 0, 0)
  end
  Citizen.Wait(300)
  if inPhone then
    Citizen.Wait(150)
    while inPhone do

      local dead = false
      if dead then
        closeGui()
        inPhone = false
      end
      local intrunk = false
      if not intrunk and not IsEntityPlayingAnim(lPed, "cellphone@", "cellphone_text_read_base", 3) and not IsEntityPlayingAnim(lPed, "cellphone@", "cellphone_swipe_screen", 3) then
        TaskPlayAnim(lPed, "cellphone@", "cellphone_text_read_base", 2.0, 3.0, -1, 49, 0, 0, 0, 0)
      end    
      Citizen.Wait(1)
    end
    local intrunk = false
    if not intrunk then
      ClearPedTasks(PlayerPedId())
    end
  else
    local intrunk = false
    if not intrunk then
      Citizen.Wait(100)
      ClearPedTasks(PlayerPedId())
      TaskPlayAnim(lPed, "cellphone@", "cellphone_text_out", 2.0, 1.0, 5.0, 49, 0, 0, 0, 0)
      Citizen.Wait(400)
      Citizen.Wait(400)
      ClearPedTasks(PlayerPedId())
    end
  end
end)

-------------------------------------------------------------------------------------
--- VOLUME
-------------------------------------------------------------------------------------

-- RegisterCommand("volume",function(source,args)
--   if args[1] then
--       local volume = parseInt(args[1])
--       if volume <= 100 then
--       exports["pma-voice"]:setRadioVolume(volume)
--       TriggerEvent("Notify","sucesso","<b>Volume:</b> "..volume.."%",5000)
--       end
--   end
-- end)
