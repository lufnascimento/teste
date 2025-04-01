local NUI = {
    isRoutesRegistered = false,
    routes = {
        GetAllFactions = function(data)
            return serverAPI.getAllFactions()
        end,

        FactionsSelected = function(data)
            return serverAPI.selectedFactions(data)
        end,

        GetRules = function()
            return config.rules
        end,

        SetRules = function(data)
            return serverAPI.setRules(data)
        end,

        LastPage = function(data)
            local callback = serverAPI.setMoreRules(data)
            if callback.validated then
                SetNuiFocus(false, false)
                SetTimeout(1000, function()
                    CreateThread(function()
                        creator:new()
                    end)
                end)
            end
            return callback
        end,

        SendRequestForId = function(data)
            return serverAPI.getRequestForId(data.id, data.team)
        end,

        Request = function(data)
            SetNuiFocus(false, false)
            return serverAPI.statusRequestId(data.type, state.teamSide)
        end,

        TeamOnePlayers = function()
            serverAPI.teamReady()
            return { validated = true }
        end,

        ToBet = function(data)
            SetNuiFocus(false, false)
            SendNUIMessage({
                action = 'betPainel',
                data = { show = false }
            })
            serverAPI.processBet(data, state.currentBet)
        end,

        RefuseInvasion = function()
            serverAPI.refuseInvasion()
        end,

        RemoveSummonedId = function(data)
            return serverAPI.removeSummonedId(data)
        end,

        hideFrame = function()
            SetNuiFocus(false, false)
            clientAPI.hide()
            return true
        end,

        DisableControls = function()
            SetNuiFocus(false, false)
            return true
        end
    }
}

function NUI.registerRoutes()
    if NUI.isRoutesRegistered then
        print('Routes already registered, skipping...')
        return
    end

    for routeName, routeHandler in pairs(NUI.routes) do
        RegisterNUICallback(routeName, function(data, cb)
            local response = routeHandler(data)
            if cb then cb(response) end
        end)
    end

    NUI.isRoutesRegistered = true
end

CreateThread(function()
    print('Registering routes...')
    NUI.registerRoutes()
end)

clientAPI.visibility = function()
    SetNuiFocus(true, true)
    SendNUIMessage({action = 'open:creation'})
end

clientAPI.hide = function()
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = 'open:hud'
    })
    SendNUIMessage({
        action = 'scoreboard',
        data = { show = false }
    })
    SendNUIMessage({
        action = 'betPainel',
        data = { show = false }
    })
    SendNUIMessage({
        action = 'request',
        data = false
    })
end