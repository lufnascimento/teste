Shops = {
    [1] = { amount = 5000, buyed = false, price = 100000 },
    [2] = { amount = 10000, buyed = false, price = 250000 },
    [3] = { amount = 20000, buyed = false, price = 500000 },
    [4] = { amount = 30000, buyed = false, price = 1000000 },
    [5] = { amount = 50000, buyed = false, price = 2500000 },
    [6] = { amount = 100000, buyed = false, price = 5000000 },
    [7] = { amount = 500000, buyed = false, price = 10000000 },
}

CraftTemplate = {
    armas = {
        {
            item = "WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 65, }, -- ITEM / QUANTIDADE ( POR UNIDADE )                    }
            }
        },
        
        {
            item = "WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 105 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        
        {
            item = "WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },  
        
        {
            item = "WEAPON_HK_RELIKIASHOP", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 265 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        }, 
        
        {
            item = "WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 315 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },  
        
        {
            item = "WEAPON_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]    
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 395 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        
        {
            item = "WEAPON_PENTEDUPLO1", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]    
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 430 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        
        {
            item = "WEAPON_FALLGROTA", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]    
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 430 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
    },
    municao = {
        {
            item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 }  
            }
        },

        {
            item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 }  
            }
        },
        
        {
            item = "AMMO_HK_RELIKIASHOP", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 10000 },  
            }
        },
        
        {
            item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 10000 },  
            }
        },
         
        {
            item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 15000 },  
            }
        },
        
        {
            item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 30000 },  
            }
        },
        
        {
            item = "AMMO_PENTEDUPLO1", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 40000 },  
            }
        },
        
        {
            item = "AMMO_FALLGROTA", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 40000 },  
            }
        },
    },
    municaoMafia = {
        {
            item = "AMMO_SNSPISTOL_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 75 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 }  
            }
        },

        {
            item = "AMMO_PISTOL_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 }  
            }
        },
        
        {
            item = "AMMO_SMG", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 10000 },  
            }
        },
        
        {
            item = "AMMO_MACHINEPISTOL", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 10000 },  
            }
        },
         
        {
            item = "AMMO_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 15000 },  
            }
        },
        
        {
            item = "AMMO_SPECIALCARBINE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 30000 },  
            }
        },
        
        {
            item = "WEAPON_BULLPUPRIFLE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pecadearma" , amount = 560 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        
        {
            item = "AMMO_BULLPUPRIFLE_MK2", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 30000 },  
            }
        },

        {
            item = "AMMO_PENTEDUPLO1", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 100, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 150 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsulas" , amount = 100 },  
                { item = "money" , amount = 40000 },  
            }
        },
    },
    desmanche = {
        {
            item = "c4", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "ferro" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "aluminio" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "lockpick", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "aluminio" , amount = 50 }  
            }
        },
        {
            item = "masterpick", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
            maxItems = 5,

            requires = {
                { item = "ferro" , amount = 170 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "aluminio" , amount = 170 }  
            }
        },
        {
            item = "ticket", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "papel" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "garrafanitro", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "aluminio" , amount = 50 },
                { item = "money" , amount = 50000 }
            }
        },
        {
            item = "body_armor", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "fibradecarbono" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "poliester" , amount = 60 }  
            }
        },
    },
    lavagem = {
        {
            item = "money", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 160000, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "l-alvejante" , amount = 20 }  
            }
        },
        {
            item = "capuz", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "fibradecarbono" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "poliester" , amount = 20 }  
            }
        },

        {
            item = "corda", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "fibradecarbono" , amount = 25 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "poliester" , amount = 25 }  
            }
        },

        {
            item = "algemas", -- SPAWN DO ITEM
            time = 7, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 1, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "aluminio" , amount = 40 }  
            }
        },
    },
    drogasHMOB = {
        {
            item = "maconha", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "folhamaconha" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "heroina", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "morfina" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "opio", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "opiopapoula" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "balinha", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "podemd" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
    },
    drogasMLHC = {
        {
            item = "metanfetamina", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "anfetamina" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "lancaperfume", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "respingodesolda" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "haxixe", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "resinacannabis" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
        {
            item = "cocaina", -- SPAWN DO ITEM
            time = 3, -- Tempo de craft por Unidade [ em segundos ]
            customAmount = 2, -- Oque cada unidade vai fabricar
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pastabase" , amount = 1 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },
    },
}

ArmazemTemplate = {
    armas = {
        ['pecadearma'] = 1000000,
        ['gatilho'] = 1000000,
        ['molas'] = 1000000,
        ['metal'] = 1000000,
        ['money'] = 1000000,
    },
    municao = {
        ['polvora'] = 1000000,
        ['capsulas'] = 1000000,
        ['money'] = 1000000,
    },
    municaoMafia = {
        ['pecadearma'] = 1000000,
        ['polvora'] = 1000000,
        ['capsulas'] = 1000000,
        ['money'] = 1000000,
    },
    desmanche = {
        ['ferro'] = 1000000,
        ['aluminio'] = 1000000,
        ['papel'] = 1000000,
        ['money'] = 1000000,
        ['poliester'] = 1000000,
        ['fibradecarbono'] = 1000000,
    },
    lavagem = {
        ['dirty_money'] = 1000000,
        ['l-alvejante'] = 1000000,
        ['poliester'] = 1000000,
        ['fibradecarbono'] = 1000000, 
        ["money"] = 1000000,
        ['ferro'] = 1000000,
        ['aluminio'] = 1000000,
        ['money'] = 1000000,
    },
    drogasHMOB = {
        ['folhamaconha'] = 1000000,
        ['morfina'] = 1000000,
        ['opiopapoula'] = 1000000,
        ['podemd'] = 1000000,
        ['money'] = 1000000,
    },
    drogasMLHC = {
        ['anfetamina'] = 1000000,
        ['respingodesolda'] = 1000000,
        ['resinacannabis'] = 1000000,
        ['pastabase'] = 1000000,
        ['money'] = 1000000,
    },
}

CraftConfig = {
    Tables = {
-------------- [ DOMINAS ] --------------

        ['Dominacao [ARMAS]'] = {
            Config = {
                hasDominas = 'Armas',
                permission = 'perm.gerentearma',
                location = vec3(583.53,-3110.94,6.07)
            },

            Itens = {
                {
                    item = "WEAPON_APPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 215 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_SMG_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 515 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_MICROSMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 415 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

                {
                    item = "WEAPON_AK472", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "pecadearma" , amount = 450 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },

        ['Dominacao [MUNICAO]'] = {
            Config = {
                hasDominas = 'Municao&Lavagem',
                permission = 'perm.gerentemuni',
                location = vec3(121.17,-3103.37,6.0)
            },
        
            Itens = {
                {
                    item = "AMMO_SMG_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 200 },  
                    }
                },
        
                {
                    item = "AMMO_APPISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 200 },  
                        { item = "money" , amount = 10000 },  
                    }
                },
        
                {
                    item = "AMMO_MICROSMG", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 200   },  
                        { item = "money" , amount = 15000 },  
                    }
                },
        
                {
                    item = "AMMO_AK472", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "polvora" , amount = 300 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "capsulas" , amount = 200 },  
                        { item = "money" , amount = 20000 },  
                    }
                },
            }
        },


        ['Dominacao [GERAL]'] = {
            Config = {
                hasDominas = 'Geral',
                permission = nil,
                location = vec3(2757.59,1548.03,31.22)
            },

            Itens = {
                {
                    item = "WEAPON_PUMPSHOTGUN_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money" , amount = 10000000 },
                    }
                },
                -- {
                --     item = "WEAPON_BARRET", -- SPAWN DO ITEM
                --     time = 7, -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 1, -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "money" , amount = 50000000 },
                --     }
                -- },
                -- {
                --     item = "AMMO_BARRET", -- SPAWN DO ITEM
                --     time = 7, -- Tempo de craft por Unidade [ em segundos ]
                --     customAmount = 100, -- Oque cada unidade vai fabricar
                --     anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                --     requires = {
                --         { item = "money" , amount = 50000 },
                --     }
                -- },

                {
                    item = "AMMO_PUMPSHOTGUN_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "money" , amount = 1000000 },
                    }
                },

                {
                    item = "cogumelo", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "money" , amount = 20000 },
                    }
                },

                {
                    item = "barricada", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "money" , amount = 100000 },
                    }
                },
                {
                    item = "WEAPON_CARBINERIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money" , amount = 2000000 },
                    }
                },

                {
                    item = "AMMO_CARBINERIFLE_MK2", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 100, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                    requires = {
                        { item = "money" , amount = 300000 },
                    }
                },
            }
        },
       
        ['Dominacao [LAVAGEM]'] = {
            Config = {
                hasDominas = 'Municao&Lavagem',
                permission = 'perm.gerentelavagem',
                location = vec3(122.55,-3110.45,5.98)
            },

            Itens = {
                {
                    item = "money", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 180000, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "dirty_money" , amount = 200000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "l-alvejante" , amount = 20 }  
                    }
                },

            }
        },

        ['Dominacao [DROGAS]'] = {
            Config = {
                hasDominas = 'Desmanche&Drogas',
                permission = 'perm.craftdrogas',
                location = vec3(1685.54,-1679.78,112.52)
            },

            Itens = {
                {
                    item = "adrenalina", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "money" , amount = 50000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

            }
        },

        ['Dominacao [DESMANCHE]'] = {
           Config = {
               hasDominas = 'Desmanche&Drogas',
               permission = 'perm.gerentedesmanche',
               location = vec3(1692.52,-1681.54,112.52)
           },

            Itens = {
                {
                    item = "lockpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "ferro" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 30 }  
                    }
                },
                {
                    item = "masterpick", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
                    maxItems = 5,
        
                    requires = {
                        { item = "ferro" , amount = 130 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 130 }  
                    }
                },
                {
                    item = "ticket", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "papel" , amount = 10 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "garrafanitro", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "aluminio" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "ferro" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "money" , amount = 30000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "body_armor", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "poliester" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "c4", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "fibradecarbono" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "ferro" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "aluminio" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },

           }
        },
        
        -------------- [ MESAS ] --------------
        -- Armas
        ['Egito'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lideregito",
                location = vec3(-1653.4,-263.9,58.99)
            },
            Itens = CraftTemplate.municao
        },

        ['Milicia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermilicia", 
                location = vec3(1394.17,1161.93,114.33)
            },
            Itens = CraftTemplate.armas
        },

        ['Mafia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermafia",
                location = vec3(-961.34,352.03,72.1)
            },
            Itens = CraftTemplate.armas
        },

        ['Anonymous'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lideranonymous",
                location = vec3(-1568.25,776.43,189.17)
            },
            Itens = CraftTemplate.armas
        },

        ['Grota'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidergrota",
                location = vec3(1268.26,-199.89,107.57)
            },
            Itens = CraftTemplate.municao
        },

        ['Yakuza'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lideryakuza",
                location = vec3(-897.56,-1443.81,9.82)
            },
            Itens = CraftTemplate.armas
        },

        ['Santos'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidersantos",
                location = vec3(-198.59,948.65,237.99)
            },
            Itens = CraftTemplate.armas
        },

        ['Pcc'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderpcc",
                location = vec3(-3154.97,1556.08,37.27)
            },
            Itens = CraftTemplate.armas
        },

        -- Municao
        ['Cv'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercv",
                location = vec3(-1548.4,82.53,53.87)
            },
            Itens = CraftTemplate.municao
        },

        ['Japao'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderjapao",
                location = vec3(-178.76,305.69,100.91)
            },
            Itens = CraftTemplate.municao
        },

        ['Korea'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderkorea",
                location = vec3(412.12,3.84,84.92)
            },
            Itens = CraftTemplate.municao
        },

        ['Magnatas'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermagnatas",
                location = vec3(-2953.76,44.27,7.95)
            },
            Itens = CraftTemplate.municao
        },

        ['Mercenarios'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.gerentemercenarios",
                location = vec3(706.98,-966.9,30.41)

            },
            Itens = CraftTemplate.municao
        },

        ['Turquia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.gerenteturquia",
                location = vec3(1472.11,-824.86,119.85)

            },
            Itens = CraftTemplate.municao
        },

        -- Desmanche
        ['Motoclube'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermotoclube",
                location = vec3(1031.35,-116.61,74.19)
            },
            Itens = CraftTemplate.desmanche
        },

        ['Bennys'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderbennys",
                location = vec3(-242.59,-1325.76,30.89)
            },
            Itens = CraftTemplate.desmanche
        },

        ['Cohab'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercohab",
                location = vec3(-1569.77,-376.07,38.08)
            },
            Itens = CraftTemplate.desmanche
        },

        ['Lacoste'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderlacoste",
                location = vec3(726.14,-1073.31,28.31)
            },
            Itens = CraftTemplate.desmanche
        },

        ['Driftking'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderdriftking",
                location = vec3(483.31,-1325.3,29.2)
            },
            Itens = CraftTemplate.desmanche
        },

        -- Lavagem
        ['Bahamas'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderbahamas", 
                location = vec3(-1379.85,-599.18,36.51)
            },
            Itens = CraftTemplate.lavagem
        },

        ['Cassino'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercassino",
                location = vec3(943.52,8.0,75.74)
            },
            Itens = CraftTemplate.armas
        },

        ['Tequila'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidertequila",
                location = vec3(-571.71,289.06,79.18)
            },
            Itens = CraftTemplate.lavagem
        },

        ['Galaxy'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidergalaxy",
                location = vec3(-442.77,-37.26,40.88)
            },
            Itens = CraftTemplate.lavagem
        },

        ['Medusa'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermedusa",
                location = vec3(746.96,-570.56,29.37)
            },
            Itens = CraftTemplate.lavagem
        },

        ['Vanilla'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidervanilla",
                location = vec3(42.16,6542.8,31.31)
            },
            Itens = CraftTemplate.lavagem
        },

        ['Lux'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderlux",
                location = vec3(-305.88,197.99,144.37)
            },
            Itens = CraftTemplate.lavagem
        },

        -- Drogas HMOB
        ['Colombia'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidercolombia",
                location = vec3(-799.95,186.99,72.61)
            },
            Itens = CraftTemplate.drogasHMOB
        },
        ['Vagos'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidervagos",
                location = vec3(342.43,-2092.6,18.57)
            },
            Itens = CraftTemplate.drogasHMOB
        },
        ['Bloods'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderbloods",
                location = vec3(-1077.78,-1675.75,4.57)
            },
            Itens = CraftTemplate.drogasHMOB
        },

        -- Drogas MLHC
        ['Medellin'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.lidermedellin",
                location = vec3(415.71,-1501.83,30.14)
            },
            Itens = CraftTemplate.drogasMLHC
        },
        ['Roxos'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderroxos",
                location = vec3(134.05,-1936.08,20.59)
            },
            Itens = CraftTemplate.drogasMLHC
        },
        ['Elements'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderelements",
                location = vec3(-207.07,-1633.14,33.75)
            },
            Itens = CraftTemplate.drogasMLHC
        },

        ['Hospital'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.liderunizk",
                location = vec3(1135.34,-1564.68,35.38)
            },
            Itens = {
                {
                    item = "flordelotus", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
                    maxItems = 20,
        
                    requires = {
                        { item = "riopan" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                        { item = "coumadin" , amount = 100 }  
                    }
                },
            }
        },

        ['PoliciaFederal'] = {
            Config = {
                hasDominas = nil,
                permission = "perm.garagemliderpf",
                location = vec3(-791.01,-1221.01,6.98)
            },
            Itens = {
                {
                    item = "WEAPON_PISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 1, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "money" , amount = 100000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
                {
                    item = "AMMO_PISTOL", -- SPAWN DO ITEM
                    time = 7, -- Tempo de craft por Unidade [ em segundos ]
                    customAmount = 50, -- Oque cada unidade vai fabricar
                    anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)
        
                    requires = {
                        { item = "money" , amount = 50000 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    }
                },
            }
        },
    },

    Storage = {
        -- Armas
        ['Egito'] = {
            Config = {
                permission = 'perm.egito',
                location = vec3(-1657.42,-264.25,58.99),
            },
            List = ArmazemTemplate.municao
        },
        ['Milicia'] = {
            Config = {
                permission = 'perm.milicia',
                location = vec3(1403.65,1144.63,114.33),
            },
            List = ArmazemTemplate.armas
        },
        ['Mafia'] = {
            Config = {
                permission = 'perm.mafia',
                location = vec3(-953.82,345.92,71.9),
            },
            List = ArmazemTemplate.armas
        },
        ['Anonymous'] = {
            Config = {
                permission = 'perm.anonymous',
                location = vec3(-1567.58,791.44,189.19),
            },
            List = ArmazemTemplate.armas
        },
        ['Grota'] = {
            Config = {
                permission = 'perm.grota',
                location = vec3(1265.93,-197.65,107.57),
            },
            List = ArmazemTemplate.municao
        },
        ['Yakuza'] = {
            Config = {
                permission = 'perm.yakuza',
                location = vec3(-894.46,-1471.42,9.82),

            },
            List = ArmazemTemplate.armas
        },
        ['Santos'] = {
            Config = {
                permission = 'perm.santos',
                location = vec3(-205.67,954.23,237.99),
            },
            List = ArmazemTemplate.armas
        },
        ['Pcc'] = {
            Config = {
                permission = 'perm.pcc',
                location = vec3(-3150.87,1557.8,37.27),
            },
            List = ArmazemTemplate.armas
        },

        -- Municao
        ['Cv'] = {
            Config = {
                permission = 'perm.cv',
                location = vec3(-1553.96,81.24,53.87),
            },
            List = ArmazemTemplate.municao
        },
        ['Japao'] = {
            Config = {
                permission = 'perm.japao',
                location = vec3(-179.03,303.51,100.91),
            },
            List = ArmazemTemplate.municao
        },
        ['Korea'] = {
            Config = {
                permission = 'perm.korea',
                location = vec3(406.33,2.5,84.92),
            },
            List = ArmazemTemplate.municao
        },
        ['Magnatas'] = {
            Config = {
                permission = 'perm.magnatas',
                location = vec3(-2937.41,35.37,11.61),
            },
            List = ArmazemTemplate.municao
        },
        ['Mercenarios'] = {
            Config = {
                permission = 'perm.mercenarios',
                location = vec3(705.47,-960.4,30.4),
            },
            List = ArmazemTemplate.municao
        },
        ['Turquia'] = {
            Config = {
                permission = 'perm.turquia',
                location = vec3(1311.13,-739.02,66.27),
            },
            List = ArmazemTemplate.municao
        },

        -- Desmanche
        ['Motoclube'] = {
            Config = {
                permission = 'perm.motoclube',
                location = vec3(1031.06,-158.54,74.19),
            },
            List = ArmazemTemplate.desmanche
        },
        ['Bennys'] = {
            Config = {
                permission = 'perm.bennys',
                location = vec3(-224.26,-1319.93,30.89),
            },
            List = ArmazemTemplate.desmanche
        },
        ['Cohab'] = {
            Config = {
                permission = 'perm.cohab',
                location = vec3(-1542.94,-447.5,35.92),
            },
            List = ArmazemTemplate.desmanche
        },
        ['Lacoste'] = {
            Config = {
                permission = 'perm.lacoste',
                location = vec3(735.72,-1063.93,22.16),
            },
            List = ArmazemTemplate.desmanche
        },
        ['Driftking'] = {
            Config = {
                permission = 'perm.driftking',
                location = vec3(474.85,-1308.39,29.2),
            },
            List = ArmazemTemplate.desmanche
        },

        -- Lavagem
        ['Bahamas'] = {
            Config = {
                permission = 'perm.bahamas',
                location = vec3(-1387.84,-608.84,30.31),
            },
            List = ArmazemTemplate.lavagem
        },
        ['Cassino'] = {
            Config = {
                permission = 'perm.cassino',
                location = vec3(959.37,25.1,76.99),
            },
            List = ArmazemTemplate.armas
        },
        ['Tequila'] = {
            Config = {
                permission = 'perm.tequila', 
                location = vec3(-555.62,313.32,86.96),
            },
            List = ArmazemTemplate.lavagem
        },
        ['Galaxy'] = {
            Config = {
                permission = 'perm.galaxy',
                location = vec3(-443.94,-33.89,46.19),
            },
            List = ArmazemTemplate.lavagem
        },
        ['Medusa'] = {
            Config = {
                permission = 'perm.medusa',
                location = vec3(750.59,-582.03,33.63),
            },
            List = ArmazemTemplate.lavagem
        },
        ['Vanilla'] = {
            Config = {
                permission = 'perm.vanilla',
                location = vec3(70.71,6548.21,31.31),
            },
            List = ArmazemTemplate.lavagem
        },
        ['Lux'] = {
            Config = {
                permission = 'perm.lux',
                location = vec3(-286.2,233.33,78.82),
            },
            List = ArmazemTemplate.lavagem
        },
        
        -- Drogas HMOB
        ['Colombia'] = {
            Config = {
                permission = 'perm.colombia',
                location = vec3(-803.41,185.68,72.61),
            },
            List = ArmazemTemplate.drogasHMOB
        },
        ['Vagos'] = {
            Config = {
                permission = 'perm.vagos',
                location = vec3(348.02,-2074.58,20.88),
            },
            List = ArmazemTemplate.drogasHMOB
        },
        ['Bloods'] = {
            Config = {
                permission = 'perm.bloods',
                location = vec3(-1061.76,-1662.67,4.57),
            },
            List = ArmazemTemplate.drogasHMOB
        },
        
        -- Drohas MLHC
        ['Medellin'] = {
            Config = {
                permission = 'perm.medellin',
                location = vec3(410.51,-1501.84,30.14),
            },
            List = ArmazemTemplate.drogasMLHC
        },
        ['Roxos'] = {
            Config = {
                permission = 'perm.roxos',
                location = vec3(94.44,-1981.51,20.44),
            },
            List = ArmazemTemplate.drogasMLHC
        },
        ['Elements'] = {
            Config = {
                permission = 'perm.elements',
                location = vec3(-160.0,-1636.31,37.24),
            },
            List = ArmazemTemplate.drogasMLHC
        },

        -- Extras
        ['Hospital'] = {
            Config = {
                permission = 'perm.unizk',
                location = vec3(1140.08,-1562.09,35.38),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['riopan'] = 1000000,
                ['coumadin'] = 1000000,
            }
        },
        ['PoliciaFederal'] = {
            Config = {
                permission = 'perm.policiafederal',
                location = vec3(-790.08,-1227.56,6.86),
            },
            List = {
                -- ITEM / QUANTIDADE MAXIMA
                ['money'] = 1000000,
            }
        },
    },
}

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end