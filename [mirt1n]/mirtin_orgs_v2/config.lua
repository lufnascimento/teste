Config = {}

Config.Main = {
    cmd = 'painel', -- Comando para abrir Painel
    cmdAdm = 'paineladm', -- Comando para abrir Painel ADM
    createAutomaticOrganizations = true,
    storeUrl = 'starkrj.com.br', -- Link da Sua Loja
    serverLogo = '',
    blackList = 3, -- Tempo de black em dias (3 Dia(s))
    clearChestLogs = 15, -- Logs do Bau limpar automaticamente de 15 em 15 dias. ( Evitar consumo da tabela )
}

Config.defaultPermissions = { 
    invite = { -- Permissao Para Convidar
        name = "Convidar",
        description = "Esta permissao permite vc convidar as pessoas para sua facção."
    },
    demote = { -- Permissao Para Rebaixar
        name = "Rebaixar",
        description = "Essa permissão permite que o cargo selecionado rebaixe um cargo inferior."
    }, 
    promote = { -- Permissao Para Promover
        name = "Promover",
        description = "Essa permissão permite que o cargo selecionado promova um cargo."
    }, 
    dismiss = { -- Permissao Para Rebaixar
        name = "Demitir",
        description = "Essa permissão permite que o cargo selecionado demita um cargo inferior."
    }, 
    withdraw = { -- Permissao Para Sacar Dinheiro
        name = "Sacar dinheiro",
        description = "Permite que esse cargo selecionado possa sacar dinheiro do banco da facção."
    }, 
    deposit = { -- Permissao Para Depositar Dinheiro
        name = "Depositar dinheiro",
        description = "Permite que esse cargo selecionado possa depositar dinheiro no banco da facção."
    }, 
    message = { -- Permissao para Escrever nas anotaçoes
        name = "Escrever anotações",
        description = "Permite que esse cargo selecionado possa escrever anotações."
    },
    alerts = { -- Permissao para enviar alertas
        name = "Escrever Alertas",
        description = "Permite que esse cargo selecionado possa enviar alertas para todos jogadores."
    },
    chat = { -- Permissao para Falar no chat
        name = "Escrever no chat",
        description = "Permite que esse cargo selecionado possa se comunicar no chat da facção"
    },
}

Config.ItemsTemplate = {
    armas = {
        ['dirty_money'] = 1000000,
        ['money'] = 1000000,
        ["pecadearma"] = 50,
    },
    municao = {
        ['dirty_money'] = 1000000,
        ['money'] = 1000000,
        ["capsulas"] = 50,
        ["polvora"] = 50,
    },
    desmanche = {
        ['money'] = 1000000,
        ['dirty_money'] = 1000000,
        ['ferro'] = 1000000,
        ['aluminio'] = 1000000,
        ['papel'] = 1000000,
        ['poliester'] = 1000000,
        ['fibradecarbono'] = 1000000,
    },
    lavagem = {
        ['dirty_money'] = 1000000,
        ['l-alvejante'] = 50,
        ['poliester'] = 50,
        ['fibradecarbono'] = 50, 
        ['ferro'] = 50,
        ['aluminio'] = 50,   
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
    legal = {
        ['money'] = 1000000,
    }
}


Config.Groups = {
    ['Egito'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [EGITO]'] = {
                prefix = 'Lider',
                tier = 1,
                maxSets = 3,
            },
            ['Sub-Lider [EGITO]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
                maxSets = 5,
            },
            ['Gerente [EGITO]'] = {
                prefix = 'Gerente',
                tier = 3,
                maxSets = 15,
            },
            ['Recrutador [EGITO]'] = {
                prefix = 'Recrutador',
                tier = 4,
                maxSets = 20,
            },
            ['Membro [EGITO]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [EGITO]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Grota'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [GROTA]'] = {
                prefix = 'Lider',
                tier = 1,
                maxSets = 3,
            },
            ['Sub-Lider [GROTA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
                maxSets = 5,
            },
            ['Gerente [GROTA]'] = {
                prefix = 'Gerente',
                tier = 3,
                maxSets = 15,
            },
            ['Recrutador [GROTA]'] = {
                prefix = 'Recrutador',
                tier = 4,
                maxSets = 20,
            },
            ['Membro [GROTA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [GROTA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Milicia'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [MILICIA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MILICIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MILICIA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MILICIA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MILICIA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MILICIA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Pcc'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [PCC]'] = {
                prefix = 'Lider',
                tier = 1,
                maxSets = 3,
            },
            ['Sub-Lider [PCC]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
                maxSets = 5,
            },
            ['Gerente [PCC]'] = {
                prefix = 'Gerente',
                tier = 3,
                maxSets = 15,
            },
            ['Recrutador [PCC]'] = {
                prefix = 'Recrutador',
                tier = 4,
                maxSets = 20,
            },
            ['Membro [PCC]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [PCC]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Mafia'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [MAFIA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MAFIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MAFIA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MAFIA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MAFIA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MAFIA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Anonymous'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [ANONYMOUS]'] = {
                prefix = 'Lider',
                tier = 1,
                maxSets = 3,
            },
            ['Sub-Lider [ANONYMOUS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
                maxSets = 5,
            },
            ['Gerente [ANONYMOUS]'] = {
                prefix = 'Gerente',
                tier = 3,
                maxSets = 15,
            },
            ['Recrutador [ANONYMOUS]'] = {
                prefix = 'Recrutador',
                tier = 4,
                maxSets = 20,
            },
            ['Membro [ANONYMOUS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [ANONYMOUS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Yakuza'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [YAKUZA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [YAKUZA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [YAKUZA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [YAKUZA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [YAKUZA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [YAKUZA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Santos'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.armas
            }
        },
        List = {
            ['Lider [SANTOS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [SANTOS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [SANTOS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [SANTOS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [SANTOS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [SANTOS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Cv'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [CV]'] = {
                prefix = 'Lider',
                tier = 1,
                maxSets = 3,
            },
            ['Sub-Lider [CV]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
                maxSets = 5,
            },
            ['Gerente [CV]'] = {
                prefix = 'Gerente',
                tier = 3,
                maxSets = 15,
            },
            ['Recrutador [CV]'] = {
                prefix = 'Recrutador',
                tier = 4,
                maxSets = 20,
            },
            ['Membro [CV]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [CV]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Turquia'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [TURQUIA]'] = {
                prefix = 'Lider',
                tier = 1,
                maxSets = 3,
            },
            ['Sub-Lider [TURQUIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
                maxSets = 5,
            },
            ['Gerente [TURQUIA]'] = {
                prefix = 'Gerente',
                tier = 3,
                maxSets = 15,
            },
            ['Recrutador [TURQUIA]'] = {
                prefix = 'Recrutador',
                tier = 4,
                maxSets = 20,
            },
            ['Membro [TURQUIA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [TURQUIA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Japao'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [JAPAO]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [JAPAO]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [JAPAO]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [JAPAO]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [JAPAO]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [JAPAO]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Korea'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [KOREA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [KOREA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [KOREA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [KOREA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [KOREA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [KOREA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Magnatas'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [MAGNATAS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MAGNATAS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MAGNATAS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MAGNATAS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MAGNATAS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MAGNATAS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Mercenarios'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.municao
            }
        },
        List = {
            ['Lider [MERCENARIOS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MERCENARIOS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MERCENARIOS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MERCENARIOS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MERCENARIOS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MERCENARIOS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Cohab'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.desmanche
            }
        },
        List = {
            ['Lider [COHAB]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [COHAB]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [COHAB]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [COHAB]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [COHAB]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [COHAB]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Motoclube'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.desmanche
            }
        },
        List = {
            ['Lider [MOTOCLUBE]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MOTOCLUBE]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MOTOCLUBE]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MOTOCLUBE]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MOTOCLUBE]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MOTOCLUBE]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Bennys'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.desmanche
            }
        },
        List = {
            ['Lider [BENNYS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [BENNYS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [BENNYS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [BENNYS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [BENNYS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [BENNYS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Lacoste'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.desmanche
            }
        },
        List = {
            ['Lider [LACOSTE]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [LACOSTE]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [LACOSTE]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [LACOSTE]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [LACOSTE]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [LACOSTE]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Driftking'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.desmanche
            }
        },
        List = {
            ['Lider [DRIFTKING]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [DRIFTKING]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [DRIFTKING]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [DRIFTKING]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [DRIFTKING]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [DRIFTKING]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Bahamas'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [BAHAMAS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [BAHAMAS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [BAHAMAS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [BAHAMAS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [BAHAMAS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [BAHAMAS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Cassino'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [CASSINO]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [CASSINO]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [CASSINO]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [CASSINO]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [CASSINO]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [CASSINO]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Tequila'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [TEQUILA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [TEQUILA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [TEQUILA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [TEQUILA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [TEQUILA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [TEQUILA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Galaxy'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [GALAXY]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [GALAXY]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [GALAXY]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [GALAXY]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [GALAXY]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [GALAXY]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Medusa'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [MEDUSA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MEDUSA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MEDUSA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MEDUSA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MEDUSA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MEDUSA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Vanilla'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [VANILLA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [VANILLA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [VANILLA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [VANILLA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [VANILLA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [VANILLA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },
    ['Lux'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.lavagem
            }
        },
        List = {
            ['Lider [LUX]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [LUX]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [LUX]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [LUX]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [LUX]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [LUX]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Colombia'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.drogasHMOB
            }
        },
        List = {
            ['Lider [COLOMBIA]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [COLOMBIA]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [COLOMBIA]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [COLOMBIA]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [COLOMBIA]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [COLOMBIA]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Vagos'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.drogasHMOB
            }
        },
        List = {
            ['Lider [VAGOS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [VAGOS]'] = {
                prefix = 'Sub-Lider', 
                tier = 2,
            },
            ['Gerente [VAGOS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [VAGOS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [VAGOS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [VAGOS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Bloods'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.drogasHMOB
            }
        },
        List = {
            ['Lider [BLOODS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [BLOODS]'] = {
                prefix = 'Sub-Lider', 
                tier = 2,
            },
            ['Gerente [BLOODS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [BLOODS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [BLOODS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [BLOODS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Medellin'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.drogasMLHC
            }
        },
        List = {
            ['Lider [MEDELLIN]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MEDELLIN]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MEDELLIN]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MEDELLIN]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MEDELLIN]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MEDELLIN]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Roxos'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.drogasMLHC
            }
        },
        List = {
            ['Lider [ROXOS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [ROXOS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [ROXOS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [ROXOS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [ROXOS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [ROXOS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Elements'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.drogasMLHC
            }
        },
        List = {
            ['Lider [ELEMENTS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [ELEMENTS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [ELEMENTS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [ELEMENTS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [ELEMENTS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [ELEMENTS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Customs'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Lider [CUSTOMS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [CUSTOMS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [CUSTOMS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [CUSTOMS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [CUSTOMS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [CUSTOMS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Fast'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Lider [FAST]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [FAST]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [FAST]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [FAST]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [FAST]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [FAST]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Motors'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Lider [MOTORS]'] = {
                prefix = 'Lider',
                tier = 1,
            },
            ['Sub-Lider [MOTORS]'] = {
                prefix = 'Sub-Lider',
                tier = 2,
            },
            ['Gerente [MOTORS]'] = {
                prefix = 'Gerente',
                tier = 3,
            },
            ['Recrutador [MOTORS]'] = {
                prefix = 'Recrutador',
                tier = 4,
            },
            ['Membro [MOTORS]'] = {
                prefix = 'Membro',
                tier = 5
            },
            ['Novato [MOTORS]'] = {
                prefix = 'Novato',
                tier = 6
            },
        }
    },

    ['Hospital'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Diretor [HOSPITAL]'] = {
                prefix = 'Diretor',
                tier = 1,
            },
            ['ViceDiretor [HOSPITAL]'] = {
                prefix = 'ViceDiretor',
                tier = 2,
            },
            ['Gestao [HOSPITAL]'] = {
                prefix = 'Gestao',
                tier = 3,
            },
            ['Psiquiatra [HOSPITAL]'] = {
                prefix = 'Psiquiatra',
                tier = 4,
            },
            ['Medico [HOSPITAL]'] = {
                prefix = 'Medico',
                tier = 5
            },
            ['Enfermeiro [HOSPITAL]'] = {
                prefix = 'Enfermeiro',
                tier = 6
            },
            ['Socorrista [HOSPITAL]'] = {
                prefix = 'Socorrista',
                tier = 7
            },
            ['JovemAprendiz [HOSPITAL]'] = {
                prefix = 'JovemAprendiz',
                tier = 8
            },
        }
    },
    ['Bombeiro'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Coronel [BOMBEIRO]'] = {
                prefix = 'Coronel',
                tier = 1,
            },
            ['TenenteCoronel [BOMBEIRO]'] = {
                prefix = 'TenenteCoronel',
                tier = 2,
            },
            ['Major [BOMBEIRO]'] = {
                prefix = 'Major',
                tier = 3,
            },
            ['Capitao [BOMBEIRO]'] = {
                prefix = 'Capitao',
                tier = 4,
            },
            ['Tenente [BOMBEIRO]'] = {
                prefix = 'Tenente',
                tier = 5
            },
            ['Cabo [BOMBEIRO]'] = {
                prefix = 'Cabo',
                tier = 6
            },
            ['Soldado [BOMBEIRO]'] = {
                prefix = 'Soldado',
                tier = 7
            },
            ['JovemAprendiz [BOMBEIRO]'] = {
                prefix = 'JovemAprendiz',
                tier = 8
            },
        }
    },
    ['Juridico'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Desembargador [JUDICIARIO]'] = {
                prefix = 'Desembargador',
                tier = 1,
            },
            ['Juiz [JUDICIARIO]'] = {
                prefix = 'Juiz', 
                tier = 2,
            },
            ['Promotor [JUDICIARIO]'] = {
                prefix = 'Promotor',
                tier = 3,
            },
            ['Supervisor [JUDICIARIO]'] = {
                prefix = 'Supervisor',
                tier = 4,
            },
            ['Advogado [JUDICIARIO]'] = {
                prefix = 'Advogado',
                tier = 5
            },
            ['SegurancaChef [JUDICIARIO]'] = {
                prefix = 'SegurancaChef',
                tier = 6
            },
            ['Seguranca [JUDICIARIO]'] = {
                prefix = 'Seguranca',
                tier = 7
            },
            ['EstagiarioADV [JUDICIARIO]'] = {
                prefix = 'EstagiarioADV',
                tier = 8
            },
            ['JovemAprendizAdv [JUDICIARIO]'] = {
                prefix = 'JovemAprendizAdv',
                tier = 9
            },
        }
    },
    ['Creche'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Diretor [CRECHE]'] = {
                prefix = 'Diretor',
                tier = 1,
            },
            ['Professor [CRECHE]'] = {
                prefix = 'Professor',
                tier = 2,
            },
            ['Crianca [CRECHE]'] = {
                prefix = 'Crianca',
                tier = 3,
            },
        }
    },
    ['Vanilla2'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Cafetao [VANILLA2]'] = {
                prefix = 'Cafetao',
                tier = 1,
            },
            ['Olheiro [VANILLA2]'] = {
                prefix = 'Olheiro',
                tier = 2,
            },
            ['Dancarina [VANILLA2]'] = {
                prefix = 'Dancarina',
                tier = 3,
            },
            ['Seguranca [VANILLA2]'] = {
                prefix = 'Seguranca',
                tier = 4,
            },
        }
    },
    ['Jornal'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Diretor [JORNAL]'] = {
                prefix = 'Diretor',
                tier = 1,
            },
            ['Produtor [JORNAL]'] = {
                prefix = 'Produtor',
                tier = 2,
            },
            ['Reporter [JORNAL]'] = {
                prefix = 'Reporter',
                tier = 3,
            },
            ['Estagiario [JORNAL]'] = {
                prefix = 'Estagiario',
                tier = 4,
            },
            ['JovemAprendiz [JORNAL]'] = {
                prefix = 'JovemAprendiz',
                tier = 5,
            },
        }
    },
    ['StaffOrg'] = {
        Config = {

            Goals = {
                defaultReward = 300,
                itens = Config.ItemsTemplate.legal
            }
        },
        List = {
            ['Administrador'] = {
                prefix = 'Administrador',
                tier = 1,
            },
            ['Moderador'] = {
                prefix = 'Moderador',
                tier = 2,
            },
            ['Suporte'] = {
                prefix = 'Suporte',
                tier = 3,
            },
        }
    },
}

Config.Langs = {
    ['offlinePlayer'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador não está online.",5000) end,
    ['alreadyFaction'] = function(source) TriggerClientEvent("Notify", source,"negado","Este jogador já esta em uma organização.",5000)  end,
    ['alreadyBlacklist'] = function(source) TriggerClientEvent("Notify", source,"negado","Você está na black-list, não pode receber convites.",5000)  end,
    ['alreadyUserBlacklist'] = function(source) TriggerClientEvent("Notify",source,"negado","Este jogador está em black-list.",5000)  end,
    ['sendInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você enviou o convite.",5000)  end,
    ['acceptInvite'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você aceitou o convite.",5000) end,
    ['acceptedInvite'] = function(source, ply_id) 
        TriggerClientEvent("Notify",source,"sucesso","O "..ply_id.." aceitou o convite. ",5000) 
        vRP.sendLog('orgs-recrutar', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[CONTRATOU]: '..ply_id..'\n[DATA]: '..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['bestTier'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não pode fazer isso com alguem com um cargo igual ou maior que o seu.",5000)   end,
    ['youPromoved'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi promovido.",5000)  end,
    ['youPromovedUser'] = function(source, ply_id, group) 
        TriggerClientEvent("Notify",source,"sucesso","Você promoveu o ID: "..ply_id.." para "..group..".",5000) 
        vRP.sendLog('https://discord.com/api/webhooks/1339369607953383434/CZbSSqPUG2RXM4T5-hq_q3a9HHyWLP5zlB_iSeXUMBSNouQWPEHLQTDFubTwsSKl2fhJ', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[PROMOVEU]: '..ply_id..'\n[PARA]: '..group..'\n[DATA]: '..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['youDemote'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi rebaixado.",5000)  end,
    ['youDemoteUser'] = function(source, ply_id) 
        TriggerClientEvent("Notify",source,"sucesso","Você rebaixou o ID: "..ply_id..".",5000) 
        vRP.sendLog('https://discord.com/api/webhooks/1339369844109217803/2P7LmRwM4KLTiwdJ6nZj9wzWaSmPdejOTK_nXCfvmDjb1Szlhn0vvZW7NCv86t-g4sHX', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[REBAIXOU]: '..ply_id..'\n[DATA]: '..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['youDismiss'] = function(source) TriggerClientEvent("Notify",source,"sucesso","Você foi demitido de sua organização .",5000)  end,
    ['youDismissUser'] = function(source, ply_id)
        TriggerClientEvent("Notify", source,"sucesso","Você demitiu o ID "..ply_id.." .",5000)  
        vRP.sendLog('https://discord.com/api/webhooks/1339370132438257674/kt6GzSRFG20ChbUhc3LgekIIqY2BM6KTnDmqi37HmZM2XEwIXlV-Cbe1Y5ZHEVgW9TG5', '```prolog\n[ID]: '..vRP.getUserId(source)..'\n[DEMITIU]: '..ply_id..'\n[DATA]: '..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S")..'```')
    end,
    ['waitCooldown'] = function(source) TriggerClientEvent("Notify",source,"negado","Aguarde para fazer isso..",5000) end,
    ['bankNotMoney'] = function(source) TriggerClientEvent("Notify",source,"negado","O Banco da organização não possui essa quantia.",5000)  end,
    ['rewardedGoal'] = function(source, amount) TriggerClientEvent("Notify",source,"sucesso","Você resgatou sua meta diaria e recebeu <b>R$ "..amount.."</b> por isso.",5000) end,
    ['notPermission'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui permissão.",5000)  end,
    ['notMoneyDeposit'] = function(source) TriggerClientEvent("Notify",source,"negado","Você não possui dinheiro para depositar.",5000)  end,
    ['aa'] = function(source) end,
    ['aa'] = function(source) end,
    ['aa'] = function(source) end,

}

if SERVER then
    -- CUSTOM QUERYS
    vRP.prepare('mirtin_orgs_v2/GetUsersGroup', " SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' ")
    vRP.prepare("mirtin_orgs_v2/getUserGroup", "SELECT user_id,dvalue FROM vrp_user_data WHERE dkey = 'vRP:datatable' and user_id = @user_id")
    vRP.prepare("mirtin_orgs_v2/updateUserGroup", "UPDATE vrp_user_data SET dvalue = @dvalue WHERE user_id = @user_id and dkey = 'vRP:datatable'")

    -- CAPTURAR GRUPOS COM JOGADOR OFFLINE
    function getUserGroups(user_id)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        return data.groups
    end

    -- SETAR GRUPO COM JOGADOR OFFLINE
    function updateUserGroups(user_id, groups)
        local rows = vRP.query("mirtin_orgs_v2/getUserGroup", { user_id = user_id })
        local data = json.decode(rows[1].dvalue) or {}

        if #rows == 0 then 
            return 
        end

        if not groups then
            groups = {}
        end

        data.groups = groups

        vRP.execute("mirtin_orgs_v2/updateUserGroup", { user_id = user_id, dvalue = json.encode(data) })
    end

    -- PEGAR DINHEIRO DO BANCO DO JOGADOR
    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    -- IDENTIDADE
    function getUserIdentity(user_id)
        local identity = vRP.getUserIdentity(user_id)
        if not identity then
            return
        end
        if identity.nome then
            identity.name = identity.nome
            identity.firstname = identity.sobrenome
        end

        if identity.name2 then
            identity.firstname = identity.name2
        end

        return identity
    end

    function getUserSource(user_id)
        return vRP.getUserSource(user_id)
    end

    function getUserId(source)
        return vRP.getUserId(source)
    end

    function getUsers()
        --user_id,source
        return vRP.getUsers()
    end

    function getUserMyGroups(user_id)
        return vRP.getUserGroups(user_id)
    end

    function hasGroup(user_id, group)
        return vRP.hasGroup(user_id, group)
    end

    function addUserGroup(user_id, group)
        return vRP.addUserGroup(user_id, group)
    end

    function tryFullPayment(user_id, amount)
        return vRP.tryFullPayment(user_id, amount)
    end

    function giveBankMoney(user_id, amount)
        return vRP.giveBankMoney(user_id, amount)
    end

    function getBankMoney(user_id)
        return vRP.getBankMoney(user_id)
    end

    function getItemName(item)
        local itemName = exports.vrp:itemNameList(item)
        return itemName == "Deleted" or item
    end

    function request(source, text, time)
        return vRP.request(source, text, time)
    end

    function removeUserGroup(user_id, group)
        return vRP.removeUserGroup(user_id, group)
    end

    -- REMOVER BLACKLIST
    RegisterCommand('removerbl', function(source,args)
        local user_id = getUserId(source)
        if not user_id then return end

        local ply_id = tonumber(args[1])
        if not ply_id then return end

        local hasPermission = false
        local perms = {
            { permType = 'perm', perm = 'developer.permissao' },
        }

        for _, perm in pairs(perms) do
            if perm.permType == 'perm' then
                if vRP.hasPermission(user_id, perm.perm) then
                    hasPermission = true
                end
            elseif perm.permType == 'group' then
                if vRP.hasGroup(user_id, perm.perm) then
                    hasPermission = true
                end
            end
        end

        if hasPermission then
            TriggerClientEvent("Notify", source, "sucesso","Você removeu a blacklist do ID: "..ply_id..".",5000) 
            BLACKLIST:remUser(ply_id)
        end
    end)

    exports('removerbl', function(userId)
        BLACKLIST:remUser(userId)
    end)

    AddEventHandler('vRP:playerSpawn', function(user_id, source)
        TriggerEvent('mirtin_orgs_v2:playerSpawn', user_id, source)
    end)

    AddEventHandler('vRP:playerLeave', function(user_id)
        TriggerEvent('mirtin_orgs_v2:playerLeave', user_id)
    end)
end


--[[ 
    Como Utilizar EXPORT de Guardar / Retirar Item no Bau:
    ( Colocar Esse EXPORT na função de retirar/guardar item de seu inventario)
    
    user_id: user_id, -- ID Do Jogador,
    action: withdraw or deposit, -- Ação que foi feita Retirou/Depositou
    item: item, -- Spawn do item que foi retirado/guardado.
    amount: quantidade, -- Quantidade do item que foi depositada/retirada

    EXPORT: 
    exports.mirtin_orgs_v2:addLogChest(user_id, action, item, amount)
]]

--[[ 
    Como Utilizar EXPORT De METAS DIARIAS:
    ( Colocar esse EXPORT na função de Guardar Itens no Armazem ou Coletar Itens no Farm )

    user_id: user_id, -- ID Do Jogador,
    item: item, -- Spawn do item que foi guardado/farmado.
    amount: quantidade, -- Quantidade do item que foi guardada/farmada.

    EXPORT: 
    exports.mirtin_orgs_v2:addGoal(user_id, item, amount)
]]