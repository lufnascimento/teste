MansionCreator = {
    coords = nil,
    model = nil,
    cds = nil,
    obj = nil,
}

function MansionCreator:new(cb)
    local self = setmetatable({}, { __index = MansionCreator })
    self.objects = {}
    self.cb = cb
    return self
end

function MansionCreator:uploadCoord(data)
    if not self.coords then
        self.coords = {}
    end
    self.coords[data] = GetEntityCoords(PlayerPedId())
end

function MansionCreator:start(data)
    CreateThread(function() 
        while _G.mansionInstance do
            DisablePlayerFiring(PlayerId(), true)
            Wait(0)
        end

    end)
    CreateThread(function()
        local objectsSelected = {}
        local drawedEntities = {}
        local last_entity = nil
        self.objects = {}
        local ui = GetMinimapAnchor()
        while true do
            local plyPed = PlayerPedId()
            local plyPos              = GetEntityCoords(plyPed, false)
            local plyOffset           = GetOffsetFromEntityInWorldCoords(plyPed, 0.0, 10.0, 0.0)
            local radius              = 10.9
            local handle = StartExpensiveSynchronousShapeTestLosProbe(plyPos.x, plyPos.y, plyPos.z, plyOffset.x, plyOffset.y, plyOffset.z, 16, PlayerPedId(), 7)
            local _, hit, pos, surface, entity = GetShapeTestResult(handle)
            Draw2DText(0.40,ui.bottom_y-0.24,1.0,1.0,0.45,"~r~[F7] - CANCELAR",255,255,255,150)
            Draw2DText(0.40,ui.bottom_y-0.30,1.0,1.0,0.45,"~r~[G] - FINALIZAR",255,255,255,150)
            if entity and GetEntityArchetypeName(entity) ~= "" and not objectsSelected[entity] then
                Draw2DText(0.40,ui.bottom_y-0.18,1.0,1.0,0.45,"~g~[E] - SELECIONAR PORTA",255,255,255,150)
                if last_entity ~= entity then
                    if last_entity and DoesEntityExist(last_entity) then
                        print("remove", GetEntityArchetypeName(last_entity))
                        SetEntityDrawOutline(last_entity, false)
                        drawedEntities[last_entity] = nil
                    end
                    drawedEntities[entity] = true
                    SetEntityDrawOutline(entity, true)
                    SetEntityDrawOutlineColor(255, 0, 0, 255)
                    last_entity = entity
                end
                if IsControlJustPressed(0, 38) then
                    objectsSelected[entity] = true
                    local coords = GetEntityCoords(entity)
                    self.objects[#self.objects + 1] = {
                        cds = { x = coords.x, y = coords.y, z = coords.z },
                        obj = GetEntityModel(entity)
                    }
                    last_entity = nil
                    drawedEntities[entity] = true
                    SetEntityDrawOutline(entity, true)
                    SetEntityDrawOutlineColor(0, 255, 0, 255)

                end
            end
            if IsControlJustPressed(0, 47) then
                break
            end
            if IsControlJustPressed(0, 168) then
                self.objects = nil
                break
            end
            Wait(0)
        end
        for k,v in pairs(drawedEntities) do
            if DoesEntityExist(k) then
                SetEntityDrawOutline(k, false)
            end
        end
        self.cb(self.objects)
    end)
end