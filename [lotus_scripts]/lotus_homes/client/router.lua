local Router <const> = {
    getCreateHome = function(data, cb)
        cb({
            number = '',
            models = Utils.GetModelsNuiFormatted()
        })
    end,
    close = function(data, cb)
        print("Close received.")
        SetNuiFocus(false, false)
        SendNUIMessage({ action = 'close' })
        cb({})
    end,
    getHomes = function(data, cb)
        local result = Utils.getHomes()
        cb(result)
    end,
    getMansions = function(data, cb)
        local result = Utils.getMansions()
        cb(result)
    end,
    requestCoord = function(data, cb)
        cb(GetEntityCoords(PlayerPedId()))
    end,
    createSkinshop = function(data, cb)
        print(json.encode(data))
        local homeId = data.homeId
        SetNuiFocus(false, false)
        local coords = GetCoords({
            coordType = 'skinshop',
            coordLabel = 'L. Roupas',
            maxDistance = 50.0
        })
        if not coords then
            return cb(false)
        end
        local res, err = Remote["common/updateCoords"](homeId, 'skinshopCoords', coords.coord)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        print(json.encode(coords))
        SetNuiFocus(true, true)
        cb(true)
    end,
    createGarage = function(data, cb)
        local homeId = data.homeId
        local pedCoords = GetEntityCoords(PlayerPedId())
        if #(Houses.cache[homeId][2] - pedCoords) > 20.0 then
            TriggerEvent('Notify', 'negado', 'Você não está próximo a porta da casa.')
            return cb(false)
        end
        if not Remote["permission/check"]('garagem') then
            TriggerEvent('Notify', 'negado', 'Você não tem um vale garagem.')
            return cb(false)
        end
        SetNuiFocus(false, false)
        GarageSetup:init(function(coords)
            SetNuiFocus(true, true)
            if coords then
                local res, err = Remote["common/updateCoords"](homeId, 'garageCoords', coords)
                if not res then
                    TriggerEvent("Notify", "negado", err)
                end
                cb(coords)
            else
                cb(false)
            end
        end)
    end,
    deleteGarage = function(data, cb)
        print(json.encode(data))
        local res, err = Remote["common/updateCoords"](data.homeId, 'garageCoords', nil)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        cb(true)
    end,
    deleteSkinshop = function(data, cb)
        local res, err = Remote["common/updateCoords"](data.homeId, 'skinshopCoords', nil)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        cb(true)
    end,
    increaseChest = function(data, cb)
        print(json.encode(data))

        local nextChest = nil
        for k,v in ipairs(Config.ChestUpgrade) do
            if v.amount > data.chest.current then
                nextChest = v.amount
                break
            end
        end
        local res, err = Remote["common/increaseChest"](data.homeId, nextChest)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        cb(res)
    end,
    addFriend = function(data, cb)
        print(json.encode(data))
        local res, err = Remote["common/friendManage"](data.homeId, "add", data.friendId)
        if not res then
            print(err)
            TriggerEvent("Notify", "error", err)
            cb(false)
        end
        cb(res)
    end,
    addMansionFriend = function(data, cb)
        print(json.encode(data))
        local res, err = Remote["mansions/friendManage"](data.homeId, "add", data.friendId)
        if not res then
            print(err)
            TriggerEvent("Notify", "error", err)
            cb(false)
        end
        cb(res)
    end,
    remMansionFriend = function(data, cb)
        print(json.encode(data))
        local res, err = Remote["mansions/friendManage"](data.homeId, "remove", data.friendId)
        if not res then
            print(err)
            TriggerEvent("Notify", "error", err)
            cb(false)
        end
        cb(res)
    end,

    saveHome = function(data, cb)
        cb(true)
    end,
    remFriend = function(data, cb)
        print(json.encode(data))
        local res, err = Remote["common/friendManage"](data.homeId, "remove", data.friendId)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        cb(res)
    end,
    confirmBuy = function(data, cb)
        local id = data.id
        print(json.encode(data))
        local res, err = Remote["buy"](id)
        if not res then
            TriggerEvent("Notify", "negado", err)
            -- return cb(false)
        end
        print("Soltando mouse.")
        SetNuiFocus(false, false)
        cb(res)
    end,
    sellHome = function(data, cb)
        local home = data.home
        local id = data.id
        local price = data.price
        local res, err = Remote["common/sell"](home.id, id, price)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        cb(res)
    end,
    getHoverfy = function(data, cb)
        print("get hoverfy")
        local home = Houses:getHomeProperties(nearestHomeId)
        if not home then
            print("Not hoverfy found", nearestHomeId)
            SetNuiFocus(false, false)
            return cb(false)
        end
        local label = home.type == "apartment" and "Condomínio" or "Casa"
        cb({
            id = nearestHomeId,
            name = label .. ' '..nearestHomeId,
            price = home.price,
            chest = home.chestWeight,
            iptu = math.floor(home.price * Config.iptuValue),
            visibled = true,
            model = {
                vip = Config.Types[home.type].models[home.interior].isVip,
                name = home.interior,
                image = Config.Types[home.type].models[home.interior].image,
            }
        })
    end,
    getMansionData = function(data, cb)
        cb({
            models = {
                { id = 1, image = 'https://t3.ftcdn.net/jpg/05/71/06/76/360_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg' },
            },
            cds = _G.mansionInstance.objects
        })
    end,
    requestCoord = function(data, cb)
        _G.mansionInstance:uploadCoord(data)
        cb(
            string.format('%.2f,%.2f,%.2f', GetEntityCoords(PlayerPedId()).x, GetEntityCoords(PlayerPedId()).y, GetEntityCoords(PlayerPedId()).z)
        )
    end,
    createMansion = function(data, cb)
        -- {"chestWeight":2332,"name":"23ADS","skinshop":"38.20,14.44,69.76","cds":[{"cdsString":"39, 15, 69","obj":1329570871,"cds":{"x":39.184326171875,"y":14.56680297851562,"z":68.7789535522461}}],"ownerId":2,"model":{"image":"https://t3.ftcdn.net/jpg/05/71/06/76/360_F_571067620_JS5T5TkDtu3gf8Wqm78KoJRF1vobPvo6.jpg","id":1},"chest":"38.20,14.44,69.76","barbershop":"38.20,14.44,69.76"}
        -- [{"obj":1329570871,"cds":{"x":39.184326171875,"y":14.56680297851562,"z":68.7789535522461}}]
        -- {"skinshop":{"x":38.20293807983398,"y":14.44301986694336,"z":69.76477813720703},"chest":{"x":38.20293807983398,"y":14.44301986694336,"z":69.76477813720703},"barbershop":{"x":38.20293807983398,"y":14.44301986694336,"z":69.76477813720703}}
        local response = {
            name = data.name,
            chestWeight = tonumber(data.chestWeight),
            coords = _G.mansionInstance.coords,
            objects = _G.mansionInstance.objects,
            ownerId = data.ownerId,
        }
        if not response.coords or not response.objects then
            return cb(false)
        end
        if not response.coords.skinshop or not response.coords.chest or not response.coords.barbershop then
            return cb(false)
        end
        local res, err = Remote["mansions/create"](response)
        _G.mansionInstance = nil
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        cb(true)
    end,
    createHome = function(data, cb)
        local res, err = Remote["common/create"](data)
        if not res then
            TriggerEvent("Notify", "negado", err)
        end
        SendNUIMessage({
            action = "close",
        })
        return cb(res)
    end,
}

do
    for k, v in pairs(Router) do
        RegisterNUICallback(k, v)
    end
end