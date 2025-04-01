_G.Utils = {
    GetChestUpgrade = function(currentWeight)
        local currentLevel = 1
        local nextLevel = 2
        for k, v in ipairs(Config.ChestUpgrade) do
            if currentWeight >= v.amount then
                currentLevel = k
                nextLevel = k + 1
            end
        end
        return currentLevel, nextLevel
    end,
    GetModelsNuiFormatted = function()
        local response = {}
        -- { id: 2, type: 'apartment', image: 'https://img.freepik.com/fotos-gratis/uma-pintura-de-um-lago-de-montanha-com-uma-montanha-ao-fundo_188544-9126.jpg' },

        for k, v in pairs(Config.Types.apartment.models) do
            response[#response+1] = { id = k, type = 'apartment', image = v.image }
        end
        for k, v in pairs(Config.Types.home.models) do
            response[#response+1] = { id = k, type = 'home', image = v.image }
        end
        return response
    end,
    getInteriorProps = function(houseType, interiorId)
        local interiorProps = Config.Types[houseType].models[interiorId]
        if not interiorProps then return false end
        return interiorProps
    end,
    getMansions = function()
        local serverResult = _G.Mansions_Get
        local result = {}
        for k, v in pairs(serverResult) do
            result[#result+1] = {
                id = v.id,
                name = v.name,
                friends = { max = 10, list = {} },
            }
            for id, info in pairs(v.friends) do
                table.insert(result[#result].friends.list, { id = id, name = info[1] })
            end
        end
        print(json.encode(result))
        return result
    end,
    getHomes = function()
        local serverResult = _G.Homes_Get
        local result = {}
       
        for k, v in pairs(serverResult) do
            local homeType = Houses.cache[k][4]
            local currentLevel, nextLevel = Utils.GetChestUpgrade(v.chestWeight)
            result[#result+1] = {
                id = k,
                type = homeType,
                garage = v.garageCoords,
                skinshop = v.skinshopCoords,
                name = (homeType == 'home' and "Casa" or "Apartamento").." "..k,
                iptu = { value = math.floor(Houses.cache[k][3] * Config.iptuValue), paid = false },
                chest = { max = Config.ChestUpgrade[#Config.ChestUpgrade].amount, current = v.chestWeight, value = Config.ChestUpgrade[nextLevel]?.price or Config.ChestUpgrade[#Config.ChestUpgrade]?.price, levelMax = nextLevel > #Config.ChestUpgrade },
                friends = { max = 100, list = {} },
            }
            for id, info in pairs(v.usersWithAccess) do
                print(id, info[1])
                table.insert(result[#result].friends.list, { id = id, name = info[1] })
            end
        end
        return result
    end
}

function DrawText3Ds(x,y,z,text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    SetTextFont(4)
    SetTextScale(0.35,0.35)
    SetTextColour(255,255,255,150)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(_x,_y)
end


local PriceColour = {
    {0,31},
    {5000000,28},
    {10000000,2},
    {100000000, 27}
}


API.showDispBlips = function()
    for k,v in pairs(Houses.cache) do
        if v[#v] then
            local blip = AddBlipForCoord(v[2].x,v[2].y,v[2].z)
            SetBlipSprite(blip,411)
            SetBlipAsShortRange(blip,true)
            local blipColour = 0
            local highPrice = 0
            for i = 1, #PriceColour do
                if v[3] >= PriceColour[i][1]  then
                    blipColour = PriceColour[i][2]
                    highPrice = PriceColour[i][1]
                end
            end
            SetBlipColour(blip,blipColour)
            SetBlipScale(blip,0.4)
            BeginTextCommandSetBlipName("STRING")
            if highPrice > 0 then
                AddTextComponentString("Casa")
            else
                AddTextComponentString("Casa - $"..highPrice)
            end
            EndTextCommandSetBlipName(blip)
            SetTimeout(15000,function() if DoesBlipExist(blip) then RemoveBlip(blip) end end)
        end
    end
end

local housesBlips = {}
API.myHouseBlip = function(coords) 
	local blip = AddBlipForCoord(coords.x,coords.y,coords.z)
	SetBlipSprite(blip,411)
	SetBlipAsShortRange(blip,true)
	SetBlipColour(blip,36)
	SetBlipScale(blip,0.4)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Minha propriedade")
	EndTextCommandSetBlipName(blip)
	housesBlips[#housesBlips+1] = {blip, coords}
end

API.addTempBlip = function(name, coords) 
	local blip = AddBlipForCoord(coords.x,coords.y,coords.z)
	SetBlipSprite(blip,411)
	SetBlipAsShortRange(blip,true)
	SetBlipColour(blip,1)
	SetBlipScale(blip,0.4)
    SetBlipRoute(blip, true)
    SetBlipRouteColour(blip, 1)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(name)
	EndTextCommandSetBlipName(blip)
    SetTimeout(10000, function()
        RemoveBlip(blip)
    end)
end


exports("teleportToHouse", function()
    if #housesBlips > 0 then
        local house = housesBlips[1]
        if house then
            local coords = house[2]
            SetEntityCoords(PlayerPedId(), coords.x, coords.y, coords.z)
            return true
        end
    end
    return false
end)
