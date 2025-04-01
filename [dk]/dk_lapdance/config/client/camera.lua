---@class Cam

Cam = {
    cam = nil,
    model = 0,
    cameras = {
        { rot = vec3(0.0, -0.5, 2.0) },
        { rot = vec3(0.0, 3.0, 0.5) },
        { rot = vec3(-1.0, 0.5, 2.0) },
        { rot = vec3(0.8, 2.0, 0.5) },
    }
}

--- Verificar se a câmera está ativa
---@return integer|nil
function Cam:active()
    return self.cam
end

--- Criar e ativar uma nova câmera
---@param camType string O tipo de câmera a ser criada
---@param blipCoords table As coordenadas para posicionar a câmera
function Cam:create(camType, blipCoords)
    local tempCam = CreateCam(camType)
    SetCamCoord(tempCam, vec3(blipCoords.x, blipCoords.y, blipCoords.z))
    SetCamRot(tempCam, 0, 0.0, 0.0)
    SetCamActive(tempCam, true)
    RenderScriptCams(true, false, 1, true, true)

    DestroyCam(tempCam)
end

--- Trocar a posição da câmera
---@param blipCoords table As coordenadas para reposicionar a câmera
---@param model integer O modelo de camera a ser usado
---@param camType string O tipo de camera a ser criada
function Cam:switch(blipCoords, model, camType)
    if not self:active() then
        self:create(camType, blipCoords)
    end

    self.model = model

    local cam = self.cameras[self.model]

    local coord = GetOffsetFromCoordAndHeadingInWorldCoords(blipCoords, cam.rot)

    local tempCam = CreateCamWithParams(camType, coord, 0, 0, 0, 50.0)
    SetCamActive(tempCam, true)
    SetCamActiveWithInterp(tempCam, self.cam, 600, true, true)
    PointCamAtCoord(tempCam, vec3(blipCoords.x, blipCoords.y, blipCoords.z))

    CreateThread(function()
        Wait(1)
        DestroyCam(self.cam)
        self.cam = tempCam
    end)
end

--- Resetar a câmera para o estado inicial
function Cam:reset()
    if not self:active() then return end

    DestroyCam(self.cam)
    self.model = 0
    self.cam = nil
    RenderScriptCams(false, false, 0, true, true)
end
