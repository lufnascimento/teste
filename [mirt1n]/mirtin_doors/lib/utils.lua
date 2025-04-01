function drawText(x,y,z,text,drawBox)
	local _,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(4)
	SetTextScale(0.35,0.35)
	SetTextColour(255,255,255,150)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)

    if drawBox then
        local factor = (string.len(text))/380
        DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,100)
    end
end

function GetClosestVehiclePlayer(range)
    local ped = PlayerPedId()
    local vehicles = GetGamePool("CVehicle")

    local vehID
    local min = range+0.0001
    local vehHash
    for i = 1, #vehicles do
        local veh = vehicles[i]
        local dist = #(GetEntityCoords(ped) - GetEntityCoords(veh))

        if IsEntityAVehicle(veh) and dist <= range then
            if dist < min then
                min = dist
                vehID = veh
                vehHash = GetEntityModel(veh)
            end
        end
    end

    return vehID,vehHash
end

function GetClosestPlayers()
    local peds = GetGamePool("CPed")
    local ped = PlayerPedId()
    local plys = {}
    for i=1, #peds do
        local ply = peds[i]
        if IsPedAPlayer(ply) then
            plys[#plys + 1] = GetPlayerServerId(NetworkGetPlayerIndexFromPed(ply))
        end
    end
    return plys
end

if not SERVER then
	local anims = {}
	local anim_ids = {}
	function playAnim(upper,seq,looping)
		if seq.task then
			removeObject()

			local ped = PlayerPedId()
			if seq.task == "PROP_HUMAN_SEAT_CHAIR_MP_PLAYER" then
				local x,y,z = tvRP.getPosition()
				TaskStartScenarioAtPosition(ped,seq.task,x,y,z-1,GetEntityHeading(ped),0,0,false)
			else
				TaskStartScenarioInPlace(ped,seq.task,0,not seq.play_exit)
			end
		else
			removeObject()

			local flags = 0
			if upper then flags = flags+48 end
			if looping then flags = flags+1 end

			Citizen.CreateThread(function()
				local id = (#anim_ids + 1)
				anims[id] = true

				for k,v in pairs(seq) do
					local dict = v[1]
					local name = v[2]
					local loops = v[3] or 1

					for i=1,loops do
						if anims[id] then
							local first = (k == 1 and i == 1)
							local last = (k == #seq and i == loops)

							RequestAnimDict(dict)
							local i = 0
							while not HasAnimDictLoaded(dict) and i < 1000 do
							Citizen.Wait(10)
							RequestAnimDict(dict)
							i = i + 1
						end

						if HasAnimDictLoaded(dict) and anims[id] then
							local inspeed = 3.0
							local outspeed = -3.0
							if not first then inspeed = 2.0 end
							if not last then outspeed = 2.0 end

							TaskPlayAnim(PlayerPedId(),dict,name,inspeed,outspeed,-1,flags,0,0,0,0)
						end
							Citizen.Wait(1)
							while GetEntityAnimCurrentTime(PlayerPedId(),dict,name) <= 0.95 and IsEntityPlayingAnim(PlayerPedId(),dict,name,3) and anims[id] do
								Citizen.Wait(1)
							end
						end
					end
				end

				anims[id] = nil
			end)
		end
	end

	local object = nil
	function carryObject(dict,anim,prop,flag,hand,height,pos1,pos2,pos3)
		local ped = PlayerPedId()

		RequestModel(GetHashKey(prop))
		while not HasModelLoaded(GetHashKey(prop)) do
			Citizen.Wait(10)
		end

		RequestAnimDict(dict)
		while not HasAnimDictLoaded(dict) do
			Citizen.Wait(10)
		end

		TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,flag,0,0,0,0)
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
		SetEntityCollision(object,false,false)
		if height then
			AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,hand),height,pos1,pos2,pos3,260.0,60.0,true,true,false,true,1,true)
		else
			AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,hand),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
		end

		SetEntityAsMissionEntity(object,true,true)
	end

	function removeObject()
		ResetPedMovementClipset(PlayerPedId(),0.25)
		ResetPedStrafeClipset(PlayerPedId())
		ClearPedTasks(PlayerPedId())
		
		if DoesEntityExist(object) then
			DetachEntity(object,false,false)
			DeleteObject(object)

			if NetworkGetEntityIsNetworked(object) then
				TriggerServerEvent("trydeleteobj",ObjToNet(object))
			end
			object = nil
		end
	end
end