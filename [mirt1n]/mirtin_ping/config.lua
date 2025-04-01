Config = {
    distance = 1000.0, -- Distancia Maxima para o range do ping
    distancePlayer = 250.0, -- Distancia maxima que o jogador precisa estar para o ping ser enviado

    delayPerPing = 5, -- Tempo de delay apos enviar um ping
    maxPingPerPlayer = 2, -- Maximo de pings por player ( OBS: Existe limite de ping nativo do gta total de 16)
    pingTime = 10, -- Tempo para o ping ser removido

    button = {
        type = 'MOUSE_BUTTON',
        key = 'MOUSE_MIDDLE'
    },

    sprites = {
        ['car'] = { 'mpcarhud', 'transport_car_icon', 255, 0, 0 },
        ['others'] = { 'darts', 'dart_reticules_zoomed', 0, 255, 0 }
    },

    -- Lista de Permissões para enviar os Pings ( Exemplo: admin.permissao so ve os pings de admin.permissao )
    permissions = { 
        'admin.permissao',
    },

    -- Validações para enviar o ping, Caso queira enviar o ping em uma area especifica use essa função.
    validations = function()
        if LocalPlayer.state.inArena then 
            return false
        end

        return true
    end
}

-- ADAPTAÇÕES
if SERVER then
    function userId(source)
        return vRP.getUserId(source)
    end

    function hasPermission(user_id, permission)
        return vRP.hasPermission(user_id, permission)
    end
end