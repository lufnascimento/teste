function GetCoords(data)
    local coordType = data.coordType
    local coordLabel = data.coordLabel
    local maxDistance = data.maxDistance
    local ui = GetMinimapAnchor()
    local response = {}
    local coord = GetEntityCoords(PlayerPedId())
    while true do
        local playerCoords = GetEntityCoords(PlayerPedId())
        local distance = #(playerCoords - coord)
        Draw2DText(0.40,ui.bottom_y-0.18,1.0,1.0,0.45,"~g~[E] - CONFIRMAR",255,255,255,150)
        Draw2DText(0.40,ui.bottom_y-0.24,1.0,1.0,0.45,"~r~[F7] - CANCELAR",255,255,255,150)
        if distance <= maxDistance then
            if IsControlJustPressed(0, 38) then
                response = {
                    coordType = coordType,
                    coordLabel = coordLabel,
                    coord = playerCoords
                }
                break
            elseif IsControlJustPressed(0, 168) then
                response = nil
                break
            end
        end
        Wait(0)
    end
    return response
end

function Draw2DText(x,y,width,height,scale,text,r,g,b,a)
    SetTextFont(6)
    SetTextScale(scale,scale)
    SetTextColour(r,g,b,a)
    SetTextDropShadow(0, 0, 0, 0, 200)
    SetTextDropShadow()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)
end

function GetMinimapAnchor()
    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local safezone_y = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, res_y = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local yscale = 1.0 / res_y
    local Minimap = {}
    Minimap.width = xscale * (res_x / (4 * aspect_ratio))
    Minimap.height = yscale * (res_y / 5.674)
    Minimap.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.bottom_y = 1.0 - yscale * (res_y * (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.right_x = Minimap.left_x + Minimap.width
    Minimap.top_y = Minimap.bottom_y - Minimap.height
    Minimap.x = Minimap.left_x
    Minimap.y = Minimap.top_y
    Minimap.xunit = xscale
    Minimap.yunit = yscale
    return Minimap
end