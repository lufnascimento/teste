
pp = {
	----------------------------------------------------------- ANIMAÇÕES DE CARREGAR ---------------------------------------------------------------
	['syncAnims'] = {
		[1] = { -- SEGURAR (ADULTOxADULTO)
			['actived'] = true, -- (true/false) Aqui você determina se essa animação poderá se usada
			['name'] = "segurar", -- (comando) Aqui você determina o comando da animação
			['request'] = true, -- (true/false) Essa opção determina se você vai usar request(função que perfunta se o outro player deseja fazer a animação)
			['description'] = "Segurar", -- (descrição) Aqui você determina o que aparecerá para o player que usar o request da animação (funciona apenas se requet for true)
			['source'] = {
				['cancel'] = true, -- (true/false) Ativa o evento cancelando(evento que desativa algumas teclas do player) para o player que inicia a animação. NORMALMENTE USADO EM VRPEX ANTIGA
				['blockButtons'] = true, -- (true/false) Ativa a função listada acima.
				['forceAnim'] = true, -- (true/false) Fazer com que as animações não possam ser canceladas para o player que inicia a animação.
				['blockVeh'] = true, -- (true/false) Bloquear a animação em veículos
				['blockFalling'] = false, -- (true/false) Bloquear animação enquanto o player estiver caindo.
			},
			['target'] = {
				['cancel'] = true,
				['forceAnim'] = true,
				['blockVeh'] = true,
			},
            -- condition = function(source,target)
			-- 	return (GetEntityHealth(GetPlayerPed(source)) > 101 and GetEntityHealth(GetPlayerPed(target)) > 101)
            -- end,
			-- ['requestBlock'] = true,
		},
		[2] = { -- CAVALINHO (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "cavalinho",
			['description'] = "Cavalinho",
			['request'] = true,
			['source'] = {
				['cancel'] = false,
				['forceAnim'] = true,
				['blockVeh'] = true,
			},
			['target'] = {
				['cancel'] = false,
				['forceAnim'] = true,
				['blockVeh'] = true,
			},
		},
		[3] = { -- SEGURAR NO OMBRO (ADULTOxADULTO), (ADULTOxADOLESCENTE), (ADULTOxBEBE)
			['actived'] = true,
			['name'] = "ombro",
			['description'] = "Ombro",
			['request'] = true,
			['source'] = {
				['cancel'] = false,
				['forceAnim'] = true,
				['blockVeh'] = true,
				-- ['customVariation'] = 1, -- OPCIONAL
			},
			['target'] = {
				['cancel'] = false,
				['forceAnim'] = true,
				['blockVeh'] = true,
			},
		},
		[4] = { -- SEGURAR NO COLO (ADULTOxBEBE)
			['actived'] = true,
			['name'] = "colo",
			['description'] = "Colo",
			['request'] = true,
			['source'] = {
				['cancel'] = false,
				['forceAnim'] = false,
			},
			['target'] = {
				['cancel'] = false,
				['forceAnim'] = true,
			},
		},
		-- [5] = { -- SEGURAR BEBE (ADULTOxBEBE)
		-- 	['actived'] = true,
		-- 	['name'] = "carregar",
		-- 	['description'] = "Carregar",
		-- 	['request'] = true,
		-- 	['source'] = {
		-- 		['cancel'] = false,
		-- 		['forceAnim'] = true,
		-- 	},
		-- 	['target'] = {
		-- 		['cancel'] = false,
		-- 		['forceAnim'] = true,
		-- 	},
		-- },
		[6] = { -- CARREGAR NO COLO 2 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "carregar2",
			['description'] = "Carregar 2",
			['request'] = true,
			['source'] = {
				['cancel'] = false,
				['forceAnim'] = true,
				['blockVeh'] = true,
			},
			['target'] = {
				['cancel'] = false,
				['forceAnim'] = true,
				['blockVeh'] = true,
			},
		},
		[7] = { -- CARREGAR NO COLO 3 (ADULTOxBEBE)
			['actived'] = true,
			['name'] = "carregar3",
			['description'] = "Carregar 3",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,

			},
		},
		[8] = { -- CARREGAR NO COLO 4 (ADULTOxADULTO) 
			['actived'] = true,
			['name'] = "carregar4",
			['description'] = "Carregar 4",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,

			},
		},
		[9] = { -- CARREGAR NO COLO 5 (ADULTOxADULTO) ⚠️ Animação extra gratuita feita por amnilka https://discord.gg/ee8DSmRRra
			['actived'] = true,
			['name'] = "carregar5",
			['description'] = "Carregar 5",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		----------------------------------------------------------- ANIMAÇÕES FREEZADAS ---------------------------------------------------------------
		[100] = { -- SENTAR NO COLO (ADULTOxADULTO), (ADULTOxBEBE)
			['actived'] = true,
			['name'] = "sentarcolo",
			['description'] = "Sentar Colo",
			['request'] = true,
			['source'] = {
				['cancel'] = false,
				['forceAnim'] = true,
			},
			['target'] = {
				['cancel'] = false,
				['forceAnim'] = true,
			},
		},
		[101] = { -- DORMIR NO COLO (ADULTOxBEBE)
			['actived'] = true,
			['name'] = "dormircolo",
			['description'] = "Dormir no Colo",
			['request'] = true,
			['source'] = {
				['cancel'] = false,
				['forceAnim'] = true,
			},
			['target'] = {
				['cancel'] = false,
				['forceAnim'] = true,
			},
		},
		[102] = { -- MASSAGEM COSTAS (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "massagemcosta",
			['description'] = "Massagem nas costas",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[103] = { -- MASSAGEM PERNA (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "messagemperna",
			['description'] = "Massagem na perna",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[104] = { -- BEIJO (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "beijar",
			['description'] = "Beijar",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[105] = { -- BEIJO (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "abraco",
			['description'] = "Abraco",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[106] = { -- MAOS DADAS 1
			['actived'] = true,
			['name'] = "maosdadas",
			['description'] = "Maos dadas",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[107] = { -- MAOS DADAS 2
			['actived'] = true,
			['name'] = "maosdadas2",
			['description'] = "Maos dadas 2",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[108] = { -- MAOS DADAS 3
			['actived'] = true,
			['name'] = "maosdadas3",
			['description'] = "Maos dadas 3",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[109] = { -- ABRAÇO CINTURA (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "abracocintura",
			['description'] = "Abraçar na cintura",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[110] = { -- FOTO CASAL (ADULTOxADULTO) ⚠️ Animação extra gratuita feita por amnilka https://discord.gg/ee8DSmRRra
			['actived'] = true,
			['name'] = "casalfoto",
			['description'] = "Foto de casal 1",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[111] = { -- FOTO CASAL (ADULTOxADULTO) ⚠️ Animação extra gratuita feita por amnilka https://discord.gg/ee8DSmRRra
			['actived'] = true,
			['name'] = "casalfoto2",
			['description'] = "Foto de casal 2",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},
		[112] = { -- FOTO CASAL (ADULTOxADULTO) ⚠️ Animação extra gratuita feita por amnilka https://discord.gg/ee8DSmRRra
			['actived'] = true,
			['name'] = "casalfoto3",
			['description'] = "Foto de casal 3",
			['request'] = true,
			['source'] = {
				['blockButtons'] = true,
			},
			['target'] = {
				['blockButtons'] = true,
			},
		},

		----------------------------------------------------------- DANCINHAS ---------------------------------------------------------------
		[200] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha1",
			['description'] = "Dancinha 1",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[201] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha2",
			['description'] = "Dancinha 2",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[202] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha3",
			['description'] = "Dancinha 3",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[203] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha4",
			['description'] = "Dancinha 4",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[204] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha5",
			['description'] = "Dancinha 5",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[205] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha6",
			['description'] = "Dancinha 6",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[206] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha7",
			['description'] = "Dancinha 7",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[207] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha8",
			['description'] = "Dancinha 8",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[208] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha9",
			['description'] = "Dancinha 9",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[209] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha10",
			['description'] = "Dancinha 10",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		[210] = { -- DANCINHA (ADULTOxADULTO) (ADOLESCENTExADOLESCENTE)
			['actived'] = true,
			['name'] = "dancinha11",
			['description'] = "Dancinha 11",
			['request'] = true,
			['source'] = {
				['forceAnim'] = false,
			},
			['target'] = {
				['forceAnim'] = false,
			},
		},
		------------------------------------------ +18 -----------------------------------------------------
		[300] = { -- SEXO 1 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo",
			['description'] = "Sexo",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[301] = { -- SEXO 2 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo2",
			['description'] = "Sexo 2",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[302] = { -- SEXO 3 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo3",
			['description'] = "Sexo 3",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[303] = { -- SEXO 4 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo4",
			['description'] = "Sexo 4",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[304] = { -- SEXO 5 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo5",
			['description'] = "Sexo 5",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[305] = { -- SEXO 6 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo6",
			['description'] = "Sexo 6",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		[306] = { -- SEXO 7 (ADULTOxADULTO)
			['actived'] = true,
			['name'] = "sexo7",
			['description'] = "Sexo 7",
			['request'] = true,
			['source'] = {
				['forceAnim'] = true,
			},
			['target'] = {
				['forceAnim'] = true,
			},
		},
		------------------------------------------ LAPDANCE (EXCLUSIVO PARA MEMBROS QUE POSSUEM O SCRIPT DE LAPDANCE) -----------------------------------------------------
		[400] = { -- LAPDANCE (ADULTOxADULTO) 🔐 Apenas para membros que possuem o script de lapdance
			['actived'] = true,
			['name'] = "lapdance",
			['description'] = "Lapdance 1 (com toque)",
			['request'] = true,
			['source'] = {
			},
			['target'] = {
			},
		},
		[401] = { -- LAPDANCE (ADULTOxADULTO) 🔐 Apenas para membros que possuem o script de lapdance
			['actived'] = true,
			['name'] = "lapdance2",
			['description'] = "Lapdance 2 (com toque)",
			['request'] = true,
			['source'] = {
			},
			['target'] = {
			},
		},
		[402] = { -- LAPDANCE (ADULTOxADULTO) 🔐 Apenas para membros que possuem o script de lapdance
			['actived'] = true,
			['name'] = "lapdance3",
			['description'] = "Lapdance 3 (com toque)",
			['request'] = true,
			['source'] = {
			},
			['target'] = {
			},
		},
		[403] = { -- LAPDANCE (ADULTOxADULTO) 🔐 Apenas para membros que possuem o script de lapdance
			['actived'] = true,
			['name'] = "lapdance4",
			['description'] = "Lapdance 2 (sem toque)",
			['request'] = true,
			['source'] = {
			},
			['target'] = {
			},
		},
		[404] = { -- LAPDANCE (ADULTOxADULTO) 🔐 Apenas para membros que possuem o script de lapdance
			['actived'] = true,
			['name'] = "lapdance5",
			['description'] = "Lapdance 3 (sem toque)",
			['request'] = true,
			['source'] = {
			},
			['target'] = {
			},
		},
	},
}