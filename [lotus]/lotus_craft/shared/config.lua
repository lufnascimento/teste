Config = {}

Config.CraftTemplate = {
    dominacaoLavagem = {
        {
            name = 'Dinheiro',
            image = 'money',
            spawn = 'money',
            amount = 190000,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 200000 },
                { name = 'l-alvejante', image = 'l-alvejante', amount = 20 },
            },
        },
    },

    armas = {
        {
            name = 'SNS Pistol',
            image = 'weapon_snspistol_mk2',
            spawn = 'weapon_snspistol_mk2',
            amount = 1,
            time = 7,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 60 },
            },
        },
        {
            name = 'Five Seven',
            image = 'weapon_pistol_mk2',
            spawn = 'weapon_pistol_mk2',
            amount = 1,
            time = 7,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 120 },
            },
        },
        {
            name = 'Tec-9',
            image = 'weapon_machinepistol',
            spawn = 'weapon_machinepistol',
            amount = 1,
            time = 10,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 180 },
            },
        },
        {
            name = 'SMG MK2',
            image = 'weapon_smg_mk2',
            spawn = 'weapon_smg_mk2',
            amount = 1,
            time = 10,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 240 },
            },
        },
        {
            name = 'AK-47',
            image = 'weapon_assaultrifle_mk2',
            spawn = 'weapon_assaultrifle_mk2',
            amount = 1,
            time = 25,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 310 },
            },
        },
        {
            name = 'G3',
            image = 'weapon_specialcarbine_mk2',
            spawn = 'weapon_specialcarbine_mk2',
            amount = 1,
            time = 25,
            requires = {
                { name = 'pecadearma', image = 'pecadearma', amount = 450 },
            },
        },
    },
    municao = {
        {
            name = 'SNS Pistol',
            image = 'ammo_snspistol_mk2',
            spawn = 'ammo_snspistol_mk2',
            amount = 100,
            time = 7,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 100 },
                { name = 'capsulas', image = 'capsulas', amount = 75 },
            },
        },
        {
            name = 'Five Seven',
            image = 'ammo_pistol_mk2',
            spawn = 'ammo_pistol_mk2',
            amount = 100,
            time = 7,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 150 },
                { name = 'capsulas', image = 'capsulas', amount = 100 },
            },
        },
        {
            name = 'Tec-9',
            image = 'ammo_machinepistol',
            spawn = 'ammo_machinepistol',
            amount = 100,
            time = 10,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 150 },
                { name = 'capsulas', image = 'capsulas', amount = 100 },
            },
        },
        {
            name = 'SMG MK2',
            image = 'ammo_smg_mk2',
            spawn = 'ammo_smg_mk2',
            amount = 100,
            time = 10,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 160 },
                { name = 'capsulas', image = 'capsulas', amount = 100 },
            },
        },
        {
            name = 'AK-47 MK2',
            image = 'ammo_assaultrifle_mk2',
            spawn = 'ammo_assaultrifle_mk2',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 200 },
                { name = 'capsulas', image = 'capsulas', amount = 100 },
                { name = 'money',    image = 'money',    amount = 18000 },
            },
        },
        {
            name = 'G3 MK2',
            image = 'ammo_specialcarbine_mk2',
            spawn = 'ammo_specialcarbine_mk2',
            amount = 100,
            time = 25,
            requires = {
                { name = 'polvora',  image = 'polvora',  amount = 100 },
                { name = 'capsulas', image = 'capsulas', amount = 100 },
                { name = 'money',    image = 'money',    amount = 30000 },
            },
        },
    },
    lavagem = {
        {
            name = 'Dinheiro',
            image = 'money',
            spawn = 'money',
            amount = 180000,
            time = 4,
            requires = {
                { name = 'dirty_money', image = 'dirty_money', amount = 200000 },
                { name = 'l-alvejante', image = 'l-alvejante', amount = 20 },
            },
        },
        {
            name = 'Capuz',
            image = 'capuz',
            spawn = 'capuz',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 20000 },
            },
        },
        {
            name = 'Corda',
            image = 'corda',
            spawn = 'corda',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 20000 },
            },
        },
        {
            name = 'Algemas',
            image = 'algema',
            spawn = 'algema',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 20000 },
            },
        },
        {
            name = 'C4',
            image = 'c4',
            spawn = 'c4',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 5000 },
            },
        },
        {
            name = 'Colete',
            image = 'body_armor',
            spawn = 'body_armor',
            amount = 1,
            time = 10,
            requires = {
                { name = 'money', image = 'money', amount = 50000 },
            },
        },
    },
    drogasAzuis = {
        {
            name = "metanfetamina",
            image = "metanfetamina",
            spawn = "metanfetamina",
            amount = 2,
            time = 3,
            requires = {
                { name = "anfetamina", image = "anfetamina", amount = 1 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasVermelhas = {
        {
            name = "heroina",
            image = "heroina",
            spawn = "heroina",
            amount = 2,
            time = 3,
            requires = {
                { name = "morfina", image = "morfina", amount = 1 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasPretas = {
        {
            name = "Cocaina",
            image = "cocaina",
            spawn = "cocaina",
            amount = 2,
            time = 3,
            requires = {
                { name = "pastabase", image = "pastabase", amount = 1 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasAmarelas = {
        {
            name = "balinha",
            image = "balinha",
            spawn = "balinha",
            amount = 2,
            time = 3,
            requires = {
                { name = "podemd", image = "podemd", amount = 1 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    drogasVerdes = {
        {
            name = "maconha",
            image = "maconha",
            spawn = "maconha",
            amount = 2,
            time = 3,
            requires = {
                { name = "folhamaconha", image = "folhamaconha", amount = 1 },
            },
        },
        {
            name = "lockpick",
            image = "lockpick",
            spawn = "lockpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 50 },
                { name = "aluminio", image = "aluminio", amount = 50 },
            },
        },
        {
            name = "masterpick",
            image = "masterpick",
            spawn = "masterpick",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
        {
            name = "Placa Clonada",
            image = "placa-clonada",
            spawn = "placa-clonada",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 100 },
                { name = "aluminio", image = "aluminio", amount = 100 },
            },
        },
    },
    porte = {
        {
            name = "Pistola",
            image = "weapon_pistol",
            spawn = "weapon_pistol",
            amount = 1,
            time = 7,
            requires = {
                { name = "money", image = "money", amount = 100000 },
            },
        },
        {
            name = "Munição Pistola",
            image = "ammo_pistol",
            spawn = "ammo_pistol",
            amount = 50,
            time = 7,
            requires = {
                { name = "money", image = "money", amount = 50000 },
            },
        },
        {
            name = "alicate",
            image = "alicate",
            spawn = "alicate",
            amount = 1,
            time = 7,
            requires = {
                { name = "ferro",    image = "ferro",    amount = 170 },
                { name = "aluminio", image = "aluminio", amount = 170 },
            },
        },
    },
    hospital = {
        {
            name = "Flor de Lotus",
            image = "flordelotus",
            spawn = "flordelotus",
            amount = 1,
            time = 7,
            limit = 20,
            requires = {
                { name = "riopan",   image = "riopan",   amount = 100 },
                { name = "coumadin", image = "coumadin", amount = 100 },
            },
        },
    },
}

Config.ArmazemTemplate = {
    armas = {
        { name = "Peça de Arma", spawn = "pecadearma", image = "pecadearma" },
    },
    municao = {
        { name = "Capsulas", spawn = "capsulas", image = "capsulas" },
        { name = "Polvora",  spawn = "polvora",  image = "polvora" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    lavagem = {
        { name = "Dinheiro Sujo", spawn = "dirty_money", image = "dirty_money" },
        { name = "Alvejante",     spawn = "l-alvejante", image = "l-alvejante" },
        { name = "Dinheiro",      spawn = "money",       image = "money" },
    },
    drogasAzuis = {
        { name = "Anfetamina", spawn = "anfetamina", image = "anfetamina" },
        { name = "Ferro",      spawn = "ferro",      image = "ferro" },
        { name = "Aluminio",   spawn = "aluminio",   image = "aluminio" },
        { name = "Dinheiro",   spawn = "money",      image = "money" },
    },
    drogasVermelhas = {
        { name = "Morfina",  spawn = "morfina",  image = "morfina" },
        { name = "Ferro",    spawn = "ferro",    image = "ferro" },
        { name = "Aluminio", spawn = "aluminio", image = "aluminio" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    drogasPretas = {
        { name = "Pasta Base", spawn = "pastabase", image = "pastabase" },
        { name = "Ferro",      spawn = "ferro",     image = "ferro" },
        { name = "Aluminio",   spawn = "aluminio",  image = "aluminio" },
        { name = "Dinheiro",   spawn = "money",     image = "money" },
    },
    drogasAmarelas = {
        { name = "Pó de MD", spawn = "podemd",   image = "podemd" },
        { name = "Ferro",    spawn = "ferro",    image = "ferro" },
        { name = "Aluminio", spawn = "aluminio", image = "aluminio" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
    drogasVerdes = {
        { name = "Folha de Maconha", spawn = "folhamaconha", image = "folhamaconha" },
        { name = "Ferro",            spawn = "ferro",        image = "ferro" },
        { name = "Aluminio",         spawn = "aluminio",     image = "aluminio" },
        { name = "Dinheiro",         spawn = "money",        image = "money" },
    },
    hospital = {
        { name = "Riopan",   spawn = "riopan",   image = "riopan" },
        { name = "Cumadin",  spawn = "coumadin", image = "coumadin" },
        { name = "Dinheiro", spawn = "money",    image = "money" },
    },
}

Config.Coords = {
    -- -- DOMINACAO
    -- {
    --     name = 'Dominacao Lavagem',
    --     craftItems = Config.CraftTemplate.dominacaoLavagem,
    --     armazemItems = Config.ArmazemTemplate.lavagem,
    --     craftPermission = 'perm.gerentelavagem',
    --     armazemPermission = 'perm.lavagem',
    --     hasDomination = 'Lavagem',
    --     coords = {
    --         vec3(-234.72,-1999.12,24.68),
    --     },
    -- },

    -- ARMAS
    {
        name = 'Pcc',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderpcc',
        armazemPermission = 'perm.pcc',
        coords = {
            vec3(-202.94, 955.48, 237.99),
        },
    },
    {
        name = 'Inglaterra',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lideringlaterra',
        armazemPermission = 'perm.inglaterra',
        coords = {
            vec3(-3158.05, 1375.06, 22.61),
        },
    },
    {
        name = 'Mercenarios',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidermercenarios',
        armazemPermission = 'perm.mercenarios',
        coords = {
            vec3(-2933.74, 36.84, 11.61),
        },
    },
    {
        name = 'Mafia',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidermafia',
        armazemPermission = 'perm.mafia',
        coords = {
            vec3(2432.25, 4970.0, 42.34),
        },
    },
    {
        name = 'Anonymous',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lideranonymous',
        armazemPermission = 'perm.anonymous',
        coords = {
            vec3(-1486.49, 835.71, 176.99),
        },
    },
    {
        name = 'Cv',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidercv',
        armazemPermission = 'perm.cv',
        coords = {
            vec3(1311.1, -742.18, 66.27),
        },
    },
    {
        name = 'Espanha',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderespanha',
        armazemPermission = 'perm.espanha',
        coords = {
            vec3(707.0, -966.93, 30.41),
        },
    },
    {
        name = 'Hospicio',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.liderhospicio',
        armazemPermission = 'perm.hospicio',
        coords = {
            vec3(109.35, 6619.69, 31.73),
        },
    },
    {
        name = 'Sintonia',
        craftItems = Config.CraftTemplate.armas,
        armazemItems = Config.ArmazemTemplate.armas,
        craftPermission = 'perm.lidersintonia',
        armazemPermission = 'perm.sintonia',
        coords = {
            vec3(855.47, 1020.23, 269.95),
        },
    },

    -- MUNICAO
    {
        name = 'Bronks',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderbronks',
        armazemPermission = 'perm.bronks',
        coords = {
            vec3(1241.37, -215.15, 101.27),
        },
    },
    {
        name = 'Korea',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderkorea',
        armazemPermission = 'perm.korea',
        coords = {
            vec3(-2678.98, 1327.1, 144.25),
        },
    },
    {
        name = 'Magnatas',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lidermagnatas',
        armazemPermission = 'perm.magnatas',
        coords = {
            vec3(-688.57, 5785.52, 17.32),
        },
    },
    {
        name = 'Franca',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderfranca',
        armazemPermission = 'perm.franca',
        coords = {
            vec3(-2253.96, -266.28, 63.51),
        },
    },
    {
        name = 'Turquia',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderturquia',
        armazemPermission = 'perm.turquia',
        coords = {
            vec3(-1790.83, 420.23, 113.47),
        },
    },
    {
        name = 'Central',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lidercentral',
        armazemPermission = 'perm.central',
        coords = {
            vec3(-1530.27, 148.48, 60.79),
        },
    },
    {
        name = 'Russia',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderrussia',
        armazemPermission = 'perm.russia',
        coords = {
            vec3(1393.71, 1147.02, 114.33),
        },
    },
    {
        name = 'Bratva',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.liderbratva',
        armazemPermission = 'perm.bratva',
        coords = {
            vec3(1391.9, -2532.5, 55.03),
        },
    },
    {
        name = 'Cartel',
        craftItems = Config.CraftTemplate.municao,
        armazemItems = Config.ArmazemTemplate.municao,
        craftPermission = 'perm.lidercartel',
        armazemPermission = 'perm.cartel',
        coords = {
            vec3(-599.03, -1616.75, 33.01),
        },
    },

    -- LAVAGEM
    {
        name = 'Bahamas',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderbahamas',
        armazemPermission = 'perm.bahamas',
        coords = {
            vec3(-1383.34, -593.89, 30.31),
        },
    },
    {
        name = 'Cassino',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidercassino',
        armazemPermission = 'perm.cassino',
        coords = {
            vec3(961.02, 13.77, 75.74),
        },
    },
    {
        name = 'Medusa',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidermedusa',
        armazemPermission = 'perm.medusa',
        coords = {
            vec3(749.6, -550.66, 33.63),
        },
    },
    {
        name = 'Tequila',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidertequila',
        armazemPermission = 'perm.tequila',
        coords = {
            vec3(-570.0, 278.22, 77.68),
        },
    },
    {
        name = 'Furia',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderfuria',
        armazemPermission = 'perm.furia',
        coords = {
            vec3(-3236.28, 817.34, 14.1),
        },
    },
    {
        name = 'Lux',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.liderlux',
        armazemPermission = 'perm.lux',
        coords = {
            vec3(-287.09, 235.43, 78.82),
        },
    },
    {
        name = 'Vanilla',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidervanilla',
        armazemPermission = 'perm.vanilla',
        coords = {
            vec3(106.63, -1299.5, 28.76),
        },
    },
    {
        name = 'Cosanostra',
        craftItems = Config.CraftTemplate.lavagem,
        armazemItems = Config.ArmazemTemplate.lavagem,
        craftPermission = 'perm.lidercosanostra',
        armazemPermission = 'perm.cosanostra',
        coords = {
            vec3(823.18, 3426.7, 57.86),
        },
    },

    -- DROGAS
    {
        name = 'Motoclube',
        craftItems = Config.CraftTemplate.drogasVermelhas,
        armazemItems = Config.ArmazemTemplate.drogasVermelhas,
        craftPermission = 'perm.lidermotoclube',
        armazemPermission = 'perm.motoclube',
        coords = {
            vec3(972.99, -98.59, 74.34),
        },
    },
    {
        name = 'Baixada',
        craftItems = Config.CraftTemplate.drogasVermelhas,
        armazemItems = Config.ArmazemTemplate.drogasVermelhas,
        craftPermission = 'perm.liderbaixada',
        armazemPermission = 'perm.baixada',
        coords = {
            vec3(-1077.78, -1675.93, 4.57),
        },
    },
    {
        name = 'Cohab',
        craftItems = Config.CraftTemplate.drogasPretas,
        armazemItems = Config.ArmazemTemplate.drogasPretas,
        craftPermission = 'perm.lidercohab',
        armazemPermission = 'perm.cohab',
        coords = {
            vec3(472.3, -1311.12, 29.22),
        },
    },
    {
        name = 'Lacoste',
        craftItems = Config.CraftTemplate.drogasPretas,
        armazemItems = Config.ArmazemTemplate.drogasPretas,
        craftPermission = 'perm.liderlacoste',
        armazemPermission = 'perm.lacoste',
        coords = {
            vec3(-2186.41, 4250.23, 48.93),
        },
    },
    {
        name = 'Bennys',
        craftItems = Config.CraftTemplate.drogasAmarelas,
        armazemItems = Config.ArmazemTemplate.drogasAmarelas,
        craftPermission = 'perm.liderbennys',
        armazemPermission = 'perm.bennys',
        coords = {
            vec3(-242.21, -1325.67, 30.89),
        },
    },
    {
        name = 'Cdd',
        craftItems = Config.CraftTemplate.drogasAmarelas,
        armazemItems = Config.ArmazemTemplate.drogasAmarelas,
        craftPermission = 'perm.lidercdd',
        armazemPermission = 'perm.cdd',
        coords = {
            vec3(2530.71, 4121.95, 38.59),
        },
    },
    {
        name = 'Roxos',
        craftItems = Config.CraftTemplate.drogasVerdes,
        armazemItems = Config.ArmazemTemplate.drogasVerdes,
        craftPermission = 'perm.liderroxos',
        armazemPermission = 'perm.roxos',
        coords = {
            vec3(2352.24, 3137.2, 48.21),
        },
    },
    {
        name = 'Belgica',
        craftItems = Config.CraftTemplate.drogasVerdes,
        armazemItems = Config.ArmazemTemplate.drogasVerdes,
        craftPermission = 'perm.liderbelgica',
        armazemPermission = 'perm.belgica',
        coords = {
            vec3(-799.89, 187.07, 72.61),
        },
    },
    {
        name = 'Italia',
        craftItems = Config.CraftTemplate.drogasAzuis,
        armazemItems = Config.ArmazemTemplate.drogasAzuis,
        craftPermission = 'perm.lideritalia',
        armazemPermission = 'perm.italia',
        coords = {
            vec3(-1870.56, 2061.61, 135.44),
        },
    },
    {
        name = 'Colombia',
        craftItems = Config.CraftTemplate.drogasAzuis,
        armazemItems = Config.ArmazemTemplate.drogasAzuis,
        craftPermission = 'perm.lidercolombia',
        armazemPermission = 'perm.colombia',
        coords = {
            vec3(197.65, 2775.09, 45.65),
        },
    },

    -- PORTES
    {
        name = 'Civil',
        craftItems = Config.CraftTemplate.porte,
        armazemItems = {},
        craftPermission = 'perm.lidercivil',
        armazemPermission = 'perm.lidercivil',
        craftHand = true,
        coords = {
            vec3(-916.52, -2020.5, 9.4),
        },
    },
    {
        name = 'Federal',
        craftItems = Config.CraftTemplate.porte,
        armazemItems = {},
        craftPermission = 'perm.liderfederal',
        armazemPermission = 'perm.liderfederal',
        craftHand = true,
        coords = {
            vec3(-785.65, -1220.17, 6.86),
        },
    },

    -- HOSPITAL
    {
        name = 'Hospital',
        craftItems = Config.CraftTemplate.hospital,
        armazemItems = Config.ArmazemTemplate.hospital,
        craftPermission = 'perm.liderhospital',
        armazemPermission = 'perm.hospital',
        craftHand = true,
        coords = {
            vec3(1135.3, -1564.77, 35.38),
        },
    },
}
