local Tunnel = module('vrp', 'lib/Tunnel')
local Proxy = module('vrp', 'lib/Proxy')
vRP = Proxy.getInterface('vRP')
vRPclient = Tunnel.getInterface("vRP")

Dz = {}
Tunnel.bindInterface("Hookers", Dz)



function Dz.getMoney(price)
    local source = source
    local xPlayer = vRP.getUserId(source)
    local price = tonumber(price)
    if vRP.tryFullPayment(xPlayer,price) then
        return true
    else
        return false
    end
end

RegisterServerEvent('Roda_Hooks:server:setDimension')
AddEventHandler('Roda_Hooks:server:setDimension', function (hooker, isPlayer)
    local src = source
    if isPlayer then 
        SetPlayerRoutingBucket(src, 0)
    else
        local random = math.random(1,200)
        local puta = NetworkGetEntityFromNetworkId(hooker)
    
        if DoesEntityExist(puta) then 
            SetEntityRoutingBucket(puta, random)
            SetPlayerRoutingBucket(src, random)
        else
            print('possible Hacker, the entity doesnt exist')
        end
    end

end)
