-- Cooldown de 5 segundos para abrir o painel.
local toggleUiCd = Cooldown:new(5)

--- Distância que o player pode se afastar na fila de criação de dança.
Config.maxBlipsDistance = 5.0

--- Para servidores que utilizam a nativa 'OnesyncEnableRemoteAttachmentSanitization'
Config.attachmentSanitization = false

--- Desenhar texto 3D
---@param x number
---@param y number
---@param z number
---@param text string
local function text3D(x,y,z,text)
	local onScreen,_x,_y = GetScreenCoordFromWorldCoord(x,y,z)

	if not onScreen then return end

	BeginTextCommandDisplayText("STRING")
	AddTextComponentSubstringKeyboardDisplay(text)
	SetTextColour(255,255,255,150)
	SetTextScale(0.35,0.35)
	SetTextFont(4)
	SetTextCentre(1)
	EndTextCommandDisplayText(_x,_y)

	local width = string.len(text) / 160 * 0.45
	DrawRect(_x,_y + 0.0125,width,0.03,38,42,56,200)
end

--- Verificar se o Contador é maior que 0, para desenhar texto
---@param x number
---@param y number
---@param z number
---@param timeDown integer
local function drawText(x, y, z, timeDown)
	local text = "~w~~g~E  ~w~ LAPDANCE"

	if timeDown > 0 then
		text = text.." ~b~ "..timeDown
	end

	text3D(x,y,z-0.1, text)
end

---Verificar distancia entre o ped e o blip.
---@generic vec3
---@param pedCoords vec3
---@param coords vec3
---@return integer
local function plyBlipDistance(pedCoords, coords)
	return #(pedCoords - vec3(coords.x, coords.y, coords.z))
end

---Abrir UI do lapdance.
---@param ped integer
local function tryOpenUi(ped, blip)
	if IsPedInAnyVehicle(ped) then return end

	if not toggleUiCd:checkAndCreate(nil, function(seconds)
		DkNotify("red", string.format("Aguarde <strong>%s segundos</strong> para fazer isso novamente.", seconds))
	end) then return end

	ActiveBlip = blip.id
	exports["dk_lapdance"]:toggleUi(true, blip)
end

--- Thread dos blips, sinta-se livre para alterar conforme sua preferência.
---@param blips table
function Config.markerThread(blips)
	while true do
		for _,blip in pairs(blips) do
			local ped = PlayerPedId()
			local coords = blip.coords
			local distance = plyBlipDistance(GetEntityCoords(ped), coords)
			while distance <= blip.viewDist and not DancingStatus and not blip.deleted do
				distance = plyBlipDistance(GetEntityCoords(ped), coords)

				drawText(coords.x,coords.y,coords.z, blip.timer)

				if distance <= 1 then
					if (IsControlJustPressed(0,38) or IsDisabledControlJustPressed(0,38)) then
						tryOpenUi(ped, blip)
					end
				end

				Wait(0)
			end
		end
		Wait(2000)
	end
end
