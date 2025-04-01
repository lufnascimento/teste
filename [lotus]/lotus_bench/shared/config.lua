Config = {
    ImageCdn = "http://177.54.148.31:4020/lotus/inventario_tokyo/%s.png",
    Log = "Usuário {user_id} adicionou {amount}x {item} por R${value}",
    LogExpireDays = 14, -- 0 para desativar (Dias necessários para deletar logs)
    BlockedItems = {
        ["money"] = true,
    },
    Prices = {
        ["default"] = 100,
        ["ouro"] = 200,
    },
    Tables = {
        -- Armas
        {
            permission = "perm.milicia", 
            name = "Milicia",
            coords = vector3(1304.81,1116.02,105.65),
            heading = 93.35
        },
        {
            permission = "perm.mafia",
            name = "Mafia", 
            coords = vector3(-931.23,290.39,70.89),
            heading = 263.9
        },
        {
            permission = "perm.anonymous",
            name = "Anonymous",
            coords = vector3(-1470.97,877.51,183.43),
            heading = 303.65
        },
        {
            permission = "perm.egito",
            name = "Egito",
            coords = vector3(-1633.34,-258.48,53.3),
            heading = 303.65
        },
        {
            permission = "perm.grota",
            name = "Grota",
            coords = vector3(1231.94,-289.46,71.21),
            heading = 78.82
        },
        {
            permission = "perm.yakuza",
            name = "Yakuza",
            coords = vector3(-1007.85,-1452.96,5.05),
            heading = 339.2
        },


        -- Municao
        {
            permission = "perm.cv",
            name = "Cv",
            coords = vector3(-1477.76,62.22,53.57),
            heading = 236.27
        },
        {
            permission = "perm.japao",
            name = "Japao",
            coords = vector3(-175.83,272.63,92.88),
            heading = 180.56
        },
        {
            permission = "perm.santos",
            name = "Santos", 
            coords = vector3(-168.36,1034.25,232.06),
            heading = 331.68
        },
        {
            permission = "perm.korea",
            name = "Korea",
            coords = vector3(341.2,51.35,92.54),
            heading = 57.64
        },
        {
            permission = "perm.magnatas",
            name = "Magnatas",
            coords = vector3(-3012.05,126.82,14.96),
            heading = 311.51
        },
        {
            permission = "perm.mercenarios",
            name = "Mercenarios",
            coords = vector3(757.53,-970.99,25.21),
            heading = 265.85
        },
        {
            permission = "perm.turquia",
            name = "Turquia",
            coords = vector3(1298.81,-702.36,64.74),
            heading = 64.89
        },

        -- Lavagem
        {
            permission = "perm.bahamas",
            name = "Bahamas",
            coords = vector3(-1386.48,-585.11,30.19),
            heading = 0.0
        },
        {
            permission = "perm.cassino", 
            name = "Cassino",
            coords = vector3(888.43,20.43,78.89),
            heading = 63.61
        },
        {
            permission = "perm.galaxy",
            name = "Galaxy",
            coords = vector3(-413.96,-19.08,46.66),
            heading = 355.87
        },
        {
            permission = "perm.medusa",
            name = "Medusa",
            coords = vector3(764.6,-555.27,32.62),
            heading = 275.19
        },
        {
            permission = "perm.vanilla",
            name = "Vanilla",
            coords = vector3(110.05,6565.15,31.34),
            heading = 316.89
        },
        {
            permission = "perm.lux",
            name = "Lux",
            coords = vector3(-324.87,233.68,86.74),
            heading = 22.31
        },
        {
            permission = "perm.tequila",
            name = "Tequila",
            coords = vector3(-540.42,333.34,83.02),
            heading = 268.76
        },


        -- Desmanche
        {
            permission = "perm.motoclube",
            name = "Motoclube",
            coords = vector3(956.14,-138.5,74.48),
            heading = 150.74
        },
        {
            permission = "perm.bennys",
            name = "Bennys",
            coords = vector3(-245.68,-1300.72,31.27),
            heading = 90.05
        },
        {
            permission = "perm.cohab", 
            name = "Cohab",
            coords = vector3(-1510.47,-448.35,35.6),
            heading = 213.1
        },
        {
            permission = "perm.lacoste",
            name = "Lacoste",
            coords = vector3(773.49,-1051.75,27.08),
            heading = 326.22
        },
        {
            permission = "perm.driftking",
            name = "Driftking",
            coords = vector3(502.13,-1320.35,29.35),
            heading = 0.0
        },

        -- Drogas
        {
            permission = "perm.colombia",
            name = "Colombia",
            coords = vector3(-851.76,168.4,67.26),
            heading = 98.95
        },
        {
            permission = "perm.medellin", 
            name = "Medellin",
            coords = vector3(404.55,-1477.67,29.13),
            heading = 31.97
        },
        {
            permission = "perm.vagos",
            name = "Vagos", 
            coords = vector3(300.31,-2005.05,20.32),
            heading = 0.0
        },
        {
            permission = "perm.bloods",
            name = "Bloods", 
            coords = vector3( -1134.15,-1590.13,4.4),
            heading = 34.14
        },
        {
            permission = "perm.roxos",
            name = "Roxos",
            coords = vector3(104.42,-1872.77,24.13),
            heading = 0.0
        },
        {
            permission = "perm.elements",
            name = "Elements",
            coords = vector3(-123.92,-1545.63,34.04),
            heading = 331.2
        },
    }
}