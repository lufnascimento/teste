----- Lojas de Departamento -----
Shops = {
    ['Loja de Bebidas'] = {
        mode = 'buy',
        items = {
            ['cerveja'] = 5000,
            ['absinto'] = 5000,
            ['whisky'] = 5000,
            ['conhaque'] = 5000,
            ['vodka'] = 5000,
            ['tequila'] = 5000
        },
        coords = {
            { coords = vec3(1184.08, -197.7, 62.41), blip = true },
            { coords = vec3(1003.72, -2550.38, 28.29), blip = true },
            { coords = vec3(128.33, -1285.3, 29.28), blip = true },
            { coords = vec3(4902.39, -4941.16, 3.35), blip = true },
            { coords = vec3(-465.41, 4392.95, 31.96), blip = true },
            { coords = vec3(-86.28, 826.61, 227.78), blip = true },
            { coords = vec3(-161.27, 905.99, 235.64), blip = true },
            { coords = vec3(-521.26, 510.16, 108.07), blip = true },
            { coords = vec3(-823.54, 265.5, 86.19), blip = true },
            { coords = vec3(-1990.9, -513.27, 25.9), blip = true },
            { coords = vec3(-2580.77, 1868.22, 163.8), blip = true },
            { coords = vec3(-11.88, 516.56, 174.63), blip = true },
            { coords = vec3(-2800.82, -18.22, 15.92), blip = true },
            { coords = vec3(1385.37, 4700.72, 134.83), blip = true },
            { coords = vec3(-2977.45, 11.0, 6.76), blip = true },
            { coords = vec3(-2963.98, -52.6, 1.75), blip = true },
            { coords = vec3(-3020.2, 37.92, 10.11), blip = true },
            { coords = vec3(-1430.65, -1261.89, 3.49), blip = true },
            { coords = vec3(204.55, -1638.46, 33.38), blip = true },
            { coords = vec3(129.43,-1281.05,29.27), blip = true },
        }
    },

    ['Ammunation'] = {
        mode = 'buy',
        items = {
            ["scubagear"] = 500,
            ["weapon_knife"] = 1000000,
            ["weapon_dagger"] = 1000000,
            ["weapon_knuckle"] = 1000000,
            ["weapon_machete"] = 1000000,
            ["weapon_switchblade"] = 1000000,
            ["weapon_wrench"] = 1000000,
            ["weapon_hammer"] = 1000000,
            ["weapon_golfclub"] = 1000000,
            ["weapon_hatchet"] = 1000000,
            ["weapon_flashlight"] = 1000000,
            ["weapon_bat"] = 1000000,
            ["weapon_bottle"] = 1000000,
            ["weapon_battleaxe"] = 1000000,
            ["weapon_poolcue"] = 1000000,
            ["gadget_parachute"] = 100000,
        },
        blip = { index = 110, color = 0,  text = "Ammunation" },
        coords = {
            { coords = vec3(252.89,-49.25,69.94), blip = true },
            { coords = vec3(843.28,-1034.02,28.19), blip = true },
            { coords = vec3(-331.35,6083.45,31.45), blip = true },
            { coords = vec3(-663.15,-934.92,21.82), blip = true },
            { coords = vec3(-1305.18,-393.48,36.69), blip = true },
            { coords = vec3(-1118.80,2698.22,18.55), blip = true },
            { coords = vec3(2568.83,293.89,108.73), blip = true },
            { coords = vec3(-3172.68,1087.10,20.83), blip = true },
            { coords = vec3(21.32,-1106.44,29.79), blip = true },
            { coords = vec3(811.19,-2157.67,29.61), blip = true },
        }
    },

    ['Peixes'] = {
        mode = 'sell',
        blip = { index = 277, color = 0,  text = "Venda de Peixes" },
        items = {
            ["tilapia"] = 750,
            ["pacu"] = 750,
            ["tucunare"] = 750,
            ["salmao"] = 750,
            ["dourado"] = 750,
        },
        coords = {
            { coords = vec3(-1817.08,-1193.61,14.31), blip = true },
        }
    },

    ['Peixes AFK'] = {
        mode = 'sell',
        blip = { index = 277, color = 0,  text = "Venda de Peixes" },
        items = {
            ["pirarucu"] = 50000,
            ["piranha"] = 25000,
        },
        coords = {
            { coords = vec3(1300.49,4319.5,38.18), blip = true },
        }
    },
    ['Itens Peixe'] = {
        mode = 'buy',
        items = {
            ["vara"] = 50000,
            ["isca"] = 1000,
        },
        coords = {
            { coords = vec3(1332.68,4325.29,38.08) },
        }
    },

    ['Joalheria'] = {
        mode = 'sell',
        items = {
            ["bronze"] = 550,
            ["safira"] = 650,
            ["rubi"] = 600,
            ["ouro"] = 500,
        },
        coords = {
            {coords = vec3(2954.18,2743.36,43.61)}, 
        }
    },

    ['Graos'] = {
        mode = 'sell',
        items = {
            ["graosimpuros"] = 200,
        },
        coords = {
            { coords = vec3(-112.49,2818.82,53.16) }, 
        }
    },

    ['Tartarugas'] = {
        mode = 'sell',
        items = {
            ["tomate"] = 3000,
        },
        coords = {
            -- {coords = vec3(3725.21,4525.16,22.48)}, 
        }
    },

    ['Quitanda'] = {
        mode = 'sell',
        items = {
            ["tomate"] = 350,
            ["laranja"] = 500,
        },
        coords = {
            {coords = vec3(1785.64,4591.1,37.68)}, 
        }
    },

    ['Farmacia'] = {
        mode = 'buy',
        perm = 'perm.chamadoshp',
        items = {
            ['bandagem'] = 10000,

        },
        coords = {
            { coords = vec3(-1278.63,321.5,69.51) },
            { coords = vec3(-1594.99,-836.86,10.18) },
        }
    },

    ['FarmaciaFree'] = {
        mode = 'buy',
        items = {
            ['bandagem'] = 20000,

        },
        coords = {
            { coords = vec3(-1275.12,325.05,65.5) },
            { coords = vec3(1139.39,-1546.78,35.38) },
        }
    },

    ['Farmacia2'] = {
        mode = 'buy',
        items = {
            ['anticoncepcional'] = 1000,
            ['camisinha'] = 1000,
            ['dorflex'] = 1000,
            ['paracetamol'] = 1000,
            ['cataflan'] = 1000,
            ['riopan'] = 1000,
            ['luftal'] = 1000,
            ['amoxilina'] = 1000,
            ['clozapina'] = 1000,
            ['fluoxetina'] = 1000,
            ['rivotril'] = 1000,
            ['cicatricure'] = 1000,

        },
        coords = {
            { coords = vec3(92.33,-229.58,54.66) },
            { coords = vec3(-176.42,6383.61,31.49) },
            { coords = vec3(-508.39,290.46,83.39) },
            { coords = vec3(318.49,-1076.99,29.47) },
        }
    },

    ['Mercado'] = {
        mode = 'buy',
        items = {
            ['repairkit3'] = 25000,
            ['pneus'] = 5000,
            ['mochila'] = 6000,
            ['radio'] = 2000,
            ['celular'] = 3000,
            ['roupas'] = 10000,
            ['energetico'] = 15000,
            ['fireworks'] = 5000,
            ['alianca'] = 50000,
            ['isca'] = 200,
        },
        blip = { index = 52, color = 0,  text = "Mercado" }, 
        coords = {
            -- { coords = vec3(-47.52,-1756.85,29.42), blip = true },
            -- { coords = vec3(-1223.38,-907.15,12.32), blip = true },
            -- { coords = vec3(25.74,-1345.26,29.49), blip = true },
            -- { coords = vec3(1135.7,-981.79,46.41), blip = true },
            -- { coords = vec3(1163.53,-323.54,69.2), blip = true },
            -- { coords = vec3(374.19,327.5,103.56), blip = true },
            -- { coords = vec3(2555.35,382.16,108.62), blip = true },
            -- { coords = vec3(2676.76,3281.57,55.24), blip = true },
            -- { coords = vec3(1960.5,3741.84,32.34), blip = true },
            -- { coords = vec3(1393.23,3605.17,34.98), blip = true },
            -- { coords = vec3(1166.08,2709.24,38.15), blip = true },
            -- { coords = vec3(547.98,2669.75,42.15), blip = true },
            -- { coords = vec3(1698.3,4924.37,42.06), blip = true },
            -- { coords = vec3(1729.54,6415.76,35.03), blip = true },
            -- { coords = vec3(-3243.9,1001.4,12.83), blip = true },
            -- { coords = vec3(-2968.0,390.8,15.04), blip = true },
            -- { coords = vec3(-3041.17,585.16,7.9), blip = true },
            -- { coords = vec3(-1820.55,792.77,138.11), blip = true },
            -- { coords = vec3(-1486.87,-379.77,40.16), blip = true },
            -- { coords = vec3(-707.4,-913.68,19.21), blip = true },
            -- { coords = vec3(-382.41,7205.74,18.21), blip = true },
            -- { coords = vec3(-525.52,7558.42,6.54), blip = true },
        }
    },

    ['Mecanica'] = {
        mode = 'buy',
        perm = nil,
        items = {
            ['repairkit3'] = 15000,
            ['kitnitro'] = 250000,
        },
        blip = { index = 52, color = 0,  text = "Loja Mecânica" }, 
        coords = {
            { coords = vec3(451.69,-1286.22,29.34), blip = false },
            { coords = vec3(842.83,-981.5,26.49), blip = false },
            { coords = vec3(-344.69,-155.89,44.58), blip = false },
        }
    },

    ['Bombeiro'] = {
        mode = 'buy',
        perm = 'perm.bombeiro',
        items = {
            ['scubagear'] = 50,
            ['GADGET_PARACHUTE'] = 1000,
            ['bandagem'] = 10000,
        },
        coords = {
            -- { coords = vec3(1193.99,-1487.94,34.85), blip = false },
        }
    },

    ['Farm'] = {
        mode = 'buy',
        perm = 'perm.ilegal',
        onlyWalletPayment = true,
        items = {
            ['metal'] = 500,
            ['aluminio'] = 500,
            ['pecadearma'] = 800,
            ['capsulas'] = 500,
            ['polvora'] = 500,
            ['molas'] = 500,
            ['folhamaconha'] = 500,
            ['podemd'] = 500,
            ['pastabase'] = 500,
            ['anfetamina'] = 500,
            ['resinacannabis'] = 500,
            ['morfina'] = 500,
            ['l-alvejante'] = 600,
            ['opiopapoula'] = 500,
            ['papel'] = 500,
            ['respingodesolda'] = 500,
            ['poliester'] = 500,
            ['ferro'] = 500,
            ['fibradecarbono'] = 500
        },
        coords = {
            { coords = vec3(-287.93,-2780.78,6.4), blip = false },
        }
    },
}