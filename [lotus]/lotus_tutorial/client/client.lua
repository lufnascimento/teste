local openTutorial = false

RegisterNuiCallback('close', function(data, cb)
    openTutorial = false
    SetNuiFocus(false,false)
    cb(true)
end)

function ToggleTutorial(open)
    openTutorial = open
    SetNuiFocus(open,open)
    SendNUIMessage({ action = open and 'open' or 'close' })
end

Citizen.CreateThread(function()
    while true do
        local ms = 1000
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local distance = #(coords - vec3(-1257.61,-1479.44,4.35))
        
        if distance < 5 and not openTutorial then
            ms = 4 
            DrawText3Ds(-1257.61,-1479.44,4.35, "PRESSIONE ~r~E ~w~ PARA ABRIR O TUTORIAL")
            
            if distance < 2.5 then 
                if IsControlJustPressed(0, 38) then
                  ToggleTutorial(true)
                end
            end
        end
        Citizen.Wait(ms)
    end
end)


function DrawText3Ds(x,y,z, text)
  local onScreen,_x,_y=World3dToScreen2d(x,y,z)
  local px,py,pz=table.unpack(GetGameplayCamCoords())

  SetTextScale(0.35, 0.35)
  SetTextFont(4)
  SetTextProportional(1)
  SetTextColour(255, 255, 255, 215)
  SetTextEntry("STRING")
  SetTextCentre(1)
  AddTextComponentString(text)
  DrawText(_x,_y)
  local factor = (string.len(text)) / 370
  DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end
