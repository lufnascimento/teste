function RegisterControls()
    -- Registrar teclas para o controle da dança.
    -- @param action string - A ação que o blip vai realizar.
    -- @param key string - A tecla apertada. Verifique: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
    -- @param title string - O título da tecla para aparecer na UI.
    -- @param description string - A descrição para aparecer na UI.

    -- Registra a tecla "X" para parar a dança
    exports["dk_lapdance"]:registerInDanceControl("stopDance", "X", "X", "Parar dança")
    -- Registra a tecla "G" para dar gorjeta
    exports["dk_lapdance"]:registerInDanceControl("addPayment", "G", "G", "Dar gorjeta")
    -- Registra a tecla "TAB" para alterar a câmera
    exports["dk_lapdance"]:registerInDanceControl("switchCam", "TAB", "TAB", "Alterar câmera")
    -- Registra a tecla "H" para esconder/mostrar a interface de controles
    exports["dk_lapdance"]:registerInDanceControl("toggleControlsUi", "H", "H", "Esconder/mostrar interface")
end