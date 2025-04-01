--- Verificar se o player tem permissão para criar e remover blips
---@param source number
---@return boolean
function Config.blipCreatePermission(source) 
    return FW.isAdmin(source)
end

--- Efetuar pagamento da gorjeta
---@param source integer
---@param amount integer
---@return boolean
function Config.tipPayment(source, amount)
    local user_id = FW.userId(source)
    if not FW.paymentBank(user_id, amount) then
        DkNotify(source, "red", "Impossível efetuar o pagamento da gorjeta. Dinheiro insuficiente.")
        return false
    end
	DkNotify(source, "green", "Gorjeta enviada com sucesso.")
    return true
end

--- Receber pagamento da gorgeta.
---@param dancers table
---@param total integer
function Config.giveTip(dancers, total)
    local amount = ParseInt(total / #dancers) -- Valor dividido pela quantidade de pessoas dançando (entregar o valor inteiro para cada dançarina pode permitir com que hajam dup's).
    table.forEach(dancers, function(datas)
		CreateThread(function()
            local user_id = FW.userId(datas.source)
            FW.giveBank(user_id, amount)
			DkNotify(datas.source, "green", "Você recebeu uma gorjeta de <strong>$"..amount..".0</strong> pela dança.", 10000)
		end)
	end)
end