------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- COMMANDS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping('+openscoreboardpistol', 'OpenScoreBoard', 'keyboard', 'CAPITAL')
RegisterCommand('+openscoreboardpistol', function(source,args)
    if not player.inZone and not dominationPistol.running then return end
    local data = vTunnel.requestList()
    TriggerEvent('flaviin:toggleHud', false)
    SendNUIMessage({ action = "openPanel", data = data })
end)

RegisterCommand('-openscoreboardpistol', function(source,args)
    SendNUIMessage({ action = "close" })
    TriggerEvent('flaviin:toggleHud', true)
end)
 
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TUNNELS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function RegisterTunnel.updateOrgPoints(status, amount)
    dominationPistol.running = status
    if status then
        SendNUIMessage({action = "setVisible", data = true}) 
        SendNUIMessage({action = "progress", data = amount }) 
    else
        exports["lotus_extras"]:toggleDominationGeral(false, 'Pistola')
        SendNUIMessage({action = "setVisible", data = false}) 
    end
end

RegisterNetEvent('notifyDomFinished', function() 
    SendNUIMessage({
        action = 'notifydom',
        data = {
          visibled = true,
          type = 'end'
        }
    })
    Wait(30000)
    SendNUIMessage({
        action = 'notifydom',
        data = {
          visibled = false,
          type = 'end'
        }
    })
end)
RegisterNetEvent('notifyDomStarted', function() 
    SendNUIMessage({
        action = 'notifydom',
        data = {
          visibled = true,
          type = 'start'
        }
    })
    Wait(30000)
    SendNUIMessage({
        action = 'notifydom',
        data = {
          visibled = false,
          type = 'start'
        }
    })
end)

function RegisterTunnel.syncKillFeed(data)
    SendNUIMessage({action = "killfy", data = {
        kill = data.killer,
        death = data.victim,
        weapon = data.weapon
    }})
end

RegisterTunnel.updateKillStreak = function(amount)
    SendNUIMessage({
        action = 'killstreak', data = { visible = true, amount = amount }
    })
    
    Citizen.Wait(5000)
    
    SendNUIMessage({
        action = 'killstreak',
        data = {
          visible = false,
          amount = 0
        }
    })
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HANDLERS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("gameEventTriggered", function(eventName, args)
    if in_arena or not player.inZone or not dominationPistol.running then return end
    if eventName ~= "CEventNetworkEntityDamage" or not IsPedAPlayer(args[2]) then return end

    local victim = args[1]
    if IsPedAPlayer(args[1]) and victim == PlayerPedId() then
        local plyHealth = GetEntityHealth(victim)
        if plyHealth <= 101 then
            leaveZone()
            vTunnel._updateKill({
                attacker = GetPlayerServerId(NetworkGetPlayerIndexFromPed(args[2])),
                weapon = args[7],
                victim = GetPlayerServerId(NetworkGetPlayerIndexFromPed(args[1])),
            })
        end
    end
end)