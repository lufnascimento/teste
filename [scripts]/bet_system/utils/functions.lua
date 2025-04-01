local Functions = {}

function Functions.getUserId(source)
    return vRP.getUserId(source)
end

function Functions.getUserMoney(userId)
    local walletMoney = vRP.getMoney(userId)
    local bankMoney = vRP.getBankMoney(userId)
    return walletMoney + bankMoney
end

function Functions.addUserMoney(userId, amount)
    return vRP.giveBankMoney(userId, amount)
end

function Functions.removeUserMoney(userId, amount)
    return vRP.tryFullPayment(userId, amount)
end

function Functions.getAlternativeCurrency(userId)
    return vRP.getMakapoints(userId)
end

function Functions.addAlternativeCurrency(userId, amount)
    return vRP.giveMakapoints(userId, amount)
end

function Functions.removeAlternativeCurrency(userId, amount)
    local makapoints = vRP.getMakapoints(userId)
    if makapoints - amount < 0 then
        return false
    end

    vRP.setMakapoints(userId, makapoints - amount)
    return true
end

return Functions