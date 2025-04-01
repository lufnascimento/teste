
GarageSetup = {
    vehicle = nil,
    camera = nil,
    enabled = false,
    onFinish = nil,
    coords = {},
}

function GarageSetup:init(cb)
    self.onFinish = cb
    self.enabled = true
    self:main()
end

function GarageSetup:spawnVehicle()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    RequestModel(GetHashKey('adder'))
    while not HasModelLoaded(GetHashKey('adder')) do
        Wait(0)
    end
    self.vehicle = CreateVehicle(GetHashKey('adder'), coords.x, coords.y, coords.z, GetEntityHeading(ped), false, false)
    SetPedIntoVehicle(ped, self.vehicle, -1)
    SetVehicleOnGroundProperly(self.vehicle)
    SetEntityDrawOutline(self.vehicle, true)
    SetEntityDrawOutlineColor(255, 0, 0, 255)
    SetVehicleFixed(self.vehicle)
    SetEntityInvincible(self.vehicle, true)
    SetEntityAsMissionEntity(self.vehicle, true, true)
    Wait(1000)
    SetVehicleOnGroundProperly(self.vehicle)
    return self.vehicle
end

function GarageSetup:spawnCamera()
    
    local vehicleCoords = GetEntityCoords(self.vehicle)
    local cameraHeight = 10.0 -- Altura da câmera acima do veículo
    local cameraOffset = vector3(0.0, 0.0, cameraHeight) -- Offset da câmera

    -- Calcula a posição e orientação da câmera
    local cameraCoords = vehicleCoords + cameraOffset
    local forwardVector = GetEntityForwardVector(self.vehicle)
    local cameraPointAt = vehicleCoords + forwardVector * 2.0 -- Direção da câmera

    -- Cria a câmera
    camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamCoord(camera, cameraCoords.x, cameraCoords.y, cameraCoords.z)
    PointCamAtCoord(camera, cameraPointAt.x, cameraPointAt.y, cameraPointAt.z)
    SetCamActive(camera, true)
    RenderScriptCams(true, false, 0, true, false)
    return camera
end

function GarageSetup:destroy()
    self.enabled = false
    if self.vehicle and DoesEntityExist(self.vehicle) then
        DeleteEntity(self.vehicle)
    end
    self.vehicle = nil
    if self.camera and IsCamActive(self.camera) then
        DestroyCam(self.camera, true)
        RenderScriptCams(false, false, 0, true, false)
    end
    self.onFinish(self.coords)
    self.coords = {}
end


function GarageSetup:main()
    self.camera = nil
    CreateThread(function()
        local ui = GetMinimapAnchor()
        while self.enabled do
            Citizen.Wait(0)
            local ped = PlayerPedId()
            local coords = GetEntityCoords(ped)
            if not self.coords['garagem'] then
                Draw2DText(0.40,ui.bottom_y-0.18,1.0,1.0,0.45,"~g~[E] - INSERIR GARAGEM",255,255,255,150)
                if IsControlJustPressed(0, 38) then
                    self.coords['garagem'] = coords
                    self:spawnVehicle()
                    self.camera = self:spawnCamera()
                end
            else
                local dist = #(coords - self.coords['garagem'])
                local vehicle = GetVehiclePedIsIn(ped, false)
                if vehicle and vehicle > 0 then
                    if dist > 15.0 then
                        self.coords = nil
                        TriggerEvent("Notify", "negado", "Você foi longe demais da garagem.", 3000)
                        break
                    end
                    local vehicleCoords = GetEntityCoords(vehicle)
                    local cameraHeight = 10.0
                    local cameraOffset = vector3(0.0, 0.0, cameraHeight)
                    local cameraCoords = vehicleCoords + cameraOffset
                    local forwardVector = GetEntityForwardVector(vehicle)
                    local cameraPointAt = vehicleCoords + forwardVector * 2.0 
                    SetCamCoord(self.camera, cameraCoords.x, cameraCoords.y, cameraCoords.z)
                    PointCamAtCoord(self.camera, cameraPointAt.x, cameraPointAt.y, cameraPointAt.z)
                    Draw2DText(0.40,ui.bottom_y-0.18,1.0,1.0,0.45,"~g~[E] - SALVAR VAGA GARAGEM",255,255,255,150)
                    if IsControlJustPressed(0, 38) then
                        self.coords['spawn'] = vec4(vehicleCoords.x, vehicleCoords.y, vehicleCoords.z, GetEntityHeading(vehicle))
                        self:destroy()
                    end
                end
            end
            Draw2DText(0.40,ui.bottom_y-0.24,1.0,1.0,0.45,"~r~[F7] - CANCELAR",255,255,255,150)
            if IsControlJustPressed(0, 168) then
                break
            end
        end
        print("Executando destroy")
        self:destroy()
    end)
end
