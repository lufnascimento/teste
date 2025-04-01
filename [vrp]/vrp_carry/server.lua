-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("vrp_carry",src)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK ROUPAS
-----------------------------------------------------------------------------------------------------------------------------------------
function src.checkItem()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id,"corda") >= 1 then
			exports['vrp_player']:checktrunk(user_id, true)
            local nplayer = vRPclient.getNearestPlayer(source, 5)
			if nplayer then
				local ok = vRP.request(nplayer, "Você deseja ser carregado?", 30)
				if ok then
					return true 
				else
					TriggerClientEvent("Notify",source,"negado","A pessoa recusou!") 
					return false
				end
			end
		else
			TriggerClientEvent("Notify",source,"negado","Você não possui <b>Cordas</b> na mochila para carregar.") 
			return false
		end
	end
end
exports("CheckCarry",function(status)
	incorda = status
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARREGAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('cmg2_animations:sync479')
AddEventHandler('cmg2_animations:sync479', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	local source = source
	local user_id = vRP.getUserId(source)
		
	if targetSrc ~= 0 then
		vRP.setBanned(user_id, true, "INJECT CARRY")
		DropPlayer(source, ":)")
		return	
	end
		
	targetSrc = vRPclient.getNearestPlayer(source,5)
	if vRP.request(targetSrc, 'Você deseja aceitar a ser carregado', 30) then
		if targetSrc then
			TriggerClientEvent('cmg2_animations:syncTarget479', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
			TriggerClientEvent('cmg2_animations:syncMe479', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANIMATION STOP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('cmg2_animations:stop479')
AddEventHandler('cmg2_animations:stop479', function(targetSrc)
	if targetSrc > 0 then
		TriggerClientEvent('cmg2_animations:cl_stop479', targetSrc)
	end
end)
