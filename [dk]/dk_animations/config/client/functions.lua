
attachmentSanitization = false

blockButtons = function() -- Esse evento é ativado a cada 5 milisegundos, se o blockButtons estiver ativado na animação, enquanto a thread durar
    BlockWeaponWheelThisFrame()
    DisableControlAction(0,29,true)
    DisableControlAction(0,38,true)
    DisableControlAction(0,47,true)
    DisableControlAction(0,56,true)
    DisableControlAction(0,57,true)
    DisableControlAction(0,73,true)
    DisableControlAction(0,137,true)
    DisableControlAction(0,161,true)
    DisableControlAction(0,166,true)
    DisableControlAction(0,167,true)
    DisableControlAction(0,169,true)
    DisableControlAction(0,170,true)
    DisableControlAction(0,182,true)
    DisableControlAction(0,187,true)
    DisableControlAction(0,188,true)
    DisableControlAction(0,189,true)
    DisableControlAction(0,190,true)
    DisableControlAction(0,243,true)
    DisableControlAction(0,245,true)
    DisableControlAction(0,257,true)
    DisableControlAction(0,288,true)
    DisableControlAction(0,289,true)
    DisableControlAction(0,311,true)
    DisableControlAction(0,344,true)	
end

-- acceptCondition  = function() -- (Opcional) Condição para aceitar as animações.
--     return GetEntityHealth(PlayerPedId()) > 101
-- end
animCondition = function() -- Condição para iniciar as animações.
    return GetEntityHealth(PlayerPedId()) > 101
end