local cfg = {}

cfg.groups = {
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ADMINISTRAÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["TOP1"] = { _config = { gtype = "staff", salario = 0 }, "perm.top1", "perm.mochilastaff",  "perm.spec", "perm.chatstaff", "perm.instagrammod", "perm.setroupas", "perm.abrirmalas", "admin.permissao", "dv.permissao", "ticket.permissao", "developer.permissao","player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff","player.som", "perm.algemar" },
	
	["paulinho"] = { _config = { gtype = "staff", salario = 0 }, "perm.spec", "paulinho.permissao", "dv.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff","player.som", "perm.algemar" },
	["developerlotusgroup@445"] = { _config = { gtype = "staff", salario = 0 }, "perm.mochilastaff",  "perm.spec", "perm.chatstaff", "perm.instagrammod", "perm.setroupas", "perm.abrirmalas", "admin.permissao", "dv.permissao", "ticket.permissao", "developer.permissao","player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff","player.som", "perm.algemar" },
	["developerofflotusgroup@445"] = { _config = { gtype = "staff", salario = 0 }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec","perm.mochilastaff", "perm.chatstaff", "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["adminlotusgroup@445"] = { _config = { gtype = "staff", salario = 20000 }, "perm.chatstaff", "admin.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["adminofflotusgroup@445"] = { _config = { gtype = "staff", salario = 0 }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec","perm.chatstaff", "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderadorlotusgroup@445"] = { _config = { gtype = "staff", salario = 15000 }, "perm.chatstaff", "moderador.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["moderadorofflotusgroup@445"] = { _config = { gtype = "staff", salario = 0 }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec","perm.chatstaff", "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["suportelotusgroup@445"] = { _config = { gtype = "staff", salario = 10000 }, "perm.chatstaff", "suporte.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["suporteofflotusgroup@445"] = { _config = { gtype = "staff", salario = 0 }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec","perm.chatstaff", "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	["user"] = { "perm.user"},
	["investidoranjo"] = { _config = { gtype = "staff" }, "investidoranjo.permissao" },

	["cc"] = { _config = { gtype = "cc", salario = 30000 }, "perm.cc", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall", "spec.permissao" },
	["streamer"] = { _config = { salario = nil, ptr = nil }, "dv.permissao", "player.noclip", "fix.permissao", "player.wall", "streamer.permissao", "perm.spawner" },
	["setroupas"] = { _config = { salario = nil, ptr = nil }, "perm.setroupas" },
	["camisadeforca"] = { _config = { salario = nil, ptr = nil }, "perm.camisadeforca" },

	["respilegallotusgroup@445"] = { _config = { gtype = "staff", salario = 20000 }, "perm.mochilastaff", "perm.spec", "perm.chatstaff", "perm.instagrammod", "perm.setroupas", "perm.respilegal", "admin.permissao", "dv.permissao", "ticket.permissao", "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall","spec.permissao", "mqcu.permissao", "perm.ptr.staff", "perm.algemar" },
	["respilegalofflotusgroup@445"] = { _config = { gtype = "staff", salario = 0 }, "perm.mochilastaff", "perm.chatstaff", "perm.user", "staffoff.permissao", "perm.ptr.staff", "perm.algemar" },
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- VIPS
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Inicial"] = { _config = { gtype = "inicial", salario = 3000, ptr = nil }, "perm.vips", "perm.inicial" },
	
	
	["Bronze"] = { _config = { gtype = "bronze", salario = 4000, ptr = nil }, "perm.vips", "perm.bronze","perm.booster" },
	["Prata"] = { _config = { gtype = "prata", salario = 6000, ptr = nil }, "perm.vips", "perm.prata", "perm.booster" },
	["Ouro"] = { _config = { gtype = "ouro", salario = 8000, ptr = nil }, "perm.vips", "perm.ouro", "perm.booster","perm.roupas" },
	["Platina"] = { _config = { gtype = "platina", salario = 10000, ptr = nil }, "perm.vips", "perm.platina", "perm.booster","perm.roupas" },
	["Diamante"] = { _config = { gtype = "diamante", salario = 15000, ptr = nil }, "perm.vips", "perm.diamante", "perm.booster","perm.roupas","perm.mochila"},
	["Esmeralda"] = { _config = { gtype = "esmeralda", salario = 20000, ptr = nil }, "perm.vips", "perm.esmeralda", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Safira"] = { _config = { gtype = "safira", salario = 30000, ptr = nil }, "perm.vips", "perm.safira", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Rubi"] = { _config = { gtype = "rubi", salario = 40000, ptr = nil }, "perm.vips", "perm.rubi", "perm.booster", "perm.roupas", "perm.mochila","player.som"},
	
	["Conexao"] = { _config = { gtype = "conexao", salario = 60000, ptr = nil }, "perm.vips", "perm.attachs", "perm.conexaorp", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["Supremoconexao"] = { _config = { gtype = "supremoconexao", salario = 80000, ptr = nil }, "perm.vips", "perm.attachs", "perm.supremoconexao", "perm.booster", "perm.roupas", "perm.mochila","player.som" },
	["VipMakakero"] = { _config = { gtype = "vipmakakero", salario = 30000, ptr = nil }, "perm.vips", "perm.attachs", "player.som", "perm.verificado", "perm.vipmakakero", "perm.booster", "perm.roupas", "perm.mochila", "player.som" },
	["VipSaoJoao"] = { _config = { gtype = "vipsaojoao", salario = 30000, ptr = nil }, "perm.vips", "perm.attachs", "player.som", "perm.verificado", "perm.vipsaojoao", "perm.booster", "perm.roupas", "perm.mochila", "player.som" },
	["VipPolicia"] = { _config = { gtype = "vippolicia", salario = 20000, ptr = nil }, "perm.attachs", "perm.mochila", "perm.deathtime" },
	["VipCrianca"] = { _config = { gtype = "vipcrianca", salario = 25000, ptr = nil }, "perm.vipcrianca", "perm.attachs", "perm.mochila", "player.som", "perm.verificado", "perm.roupas", "perm.fixvip"},
	["VipHalloween"] = { _config = { gtype = "viphalloween", salario = 25000, ptr = nil }, "perm.viphalloween", "perm.carreta", "perm.attachs", "perm.mochila", "player.som", "perm.verificado", "perm.roupas", "perm.fixvip"},

	-- VALE CASAS
	["valecasa5kk"] = { _config = { salario = nil, ptr = nil }, "valecasa5kk.permissao"}, 
	["valecasa7kk"] = { _config = { salario = nil, ptr = nil }, "valecasa7kk.permissao"}, 
	["valecasa10kk"] = { _config = { salario = nil, ptr = nil }, "valecasa10kk.permissao"}, 
	["valecasa100kk"] = { _config = { salario = nil, ptr = nil }, "valecasa100kk.permissao"}, 

	-- SALARIOS
	["SalarioGerente"] = { _config = { salario = 6000, ptr = nil }, "perm.salariogerente" },
	["SalarioPatrao"] = { _config = { salario = 9000, ptr = nil }, "perm.salariopatrao" },
	["SalarioVelhodalancha"] = { _config = { salario = 12000, ptr = nil }, "perm.salariovelhodalancha" },
	["SalarioCelebridade"] = { _config = { salario = 15000, ptr = nil }, "perm.salariocelebridade" },
	["SalarioMilionario"] = { _config = { salario = 25000, ptr = nil }, "perm.salariomilionario" },
	["SalarioDosDeuses"] = { _config = { salario = 40000, ptr = nil }, "perm.salariodosdeuses" },
	["SalarioDoMakakako"] = { _config = { salario = 100000, ptr = nil }, "perm.salariodomakakero" },


	["RubiPlus"] = { _config = { gtype = "rubiplus", salario = 30000, ptr = nil }, "perm.vips", "perm.rubiplus", "perm.booster", "perm.roupas", "perm.mochila","player.som" },

	["attachs"] = { _config = { salario = nil, ptr = nil }, "perm.attachs"},


	["Plastica"] = { _config = { salario = nil, ptr = nil }, "perm.plastica" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BENEFICIOS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Estagiario"] = { _config = { gtype = "jobdois", salario = 2000, ptr = nil }, "perm.estagiario"},
	["Funcionario"] = { _config = { gtype = "jobtres", salario = 4000, ptr = nil }, "perm.funcionario"},
	["Gerente"] = { _config = { gtype = "jobquatro", salario = 6000, ptr = nil }, "perm.gerente"},
	["Patrao"] = { _config = { gtype = "jobcinco", salario = 8000, ptr = nil }, "perm.patrao"},
	["CasaDoFranklin"] = { _config = { gtype = "jobseis", salario = 0, ptr = nil }, "perm.franklin"},
	["spotify"] = { _config = { gtype = "spotify", salario = 0, ptr = nil },"player.som"},
	["Booster"] = { _config = { salario = nil, ptr = nil }, "perm.booster" },
	["Verificado"] = { _config = { salario = nil, ptr = nil }, "perm.verificado"},
	["Vagas"] = { _config = { salario = nil, ptr = nil }, "perm.vagastres"},
	["VagasQuarenta"] = { _config = { salario = nil, ptr = nil }, "perm.vagasquarenta"}, -- id para setar 26826
	["vagas32"] = { _config = { salario = nil, ptr = nil }, "perm.vagas32"},
	["vagas60"] = { _config = { salario = nil, ptr = nil }, "perm.vagas60"},
	["vagas24"] = { _config = { salario = nil, ptr = nil }, "perm.vagas24"},
	["vagas25"] = { _config = { salario = nil, ptr = nil }, "perm.vagas25"},
	["cam"] = { _config = { salario = nil, ptr = nil }, "perm.cam"},
	["skin"] = { _config = { salario = nil, ptr = nil }, "perm.skin"},
	
	["valecasa"] = { _config = { salario = nil, ptr = nil }, "valecasa.permissao"}, 
	["valegaragem"] = { _config = { salario = nil, ptr = nil }, "valegaragem.permissao"}, 
	
	["zerodois"] = { _config = { salario = nil, ptr = nil }, "perm.zerodois"}, 
	["coberturadabianca"] = { _config = { salario = nil, ptr = nil }, "perm.coberturadabianca"}, 
	
	["ValeCasaEsmeralda"] = { _config = { salario = nil, ptr = nil }, "valecasaesmeralda.permissao"}, 
	["ValeCasaRubi"] = { _config = { salario = nil, ptr = nil }, "valecasarubi.permissao"}, 

	["malibu"] = { _config = { salario = nil, ptr = nil }, "perm.malibu"}, 
	["homeroxos"] = { _config = { salario = nil, ptr = nil }, "perm.homeroxos"}, 
	
	["snakehouse"] = { _config = { salario = nil, ptr = nil }, "perm.snakehouse"}, 
	["delacruzhouse"] = { _config = { salario = nil, ptr = nil }, "perm.delacruzhouse"}, 
	["casadolado"] = { _config = { salario = nil, ptr = nil }, "perm.casadolago"}, 
	["waleshouse"] = { _config = { salario = nil, ptr = nil }, "perm.waleshouse"}, 
	["adahouse"] = { _config = { gtype = "org", salario = nil, ptr = nil, orgType = "fMunicao" }, "perm.adahouse"}, 
	["aphouse"] = { _config = { salario = nil, ptr = nil }, "perm.aphouse"}, 
	["casadapraia"] = { _config = { salario = nil, ptr = nil }, "perm.casadapraia"}, 
	["casagta"] = { _config = { salario = nil, ptr = nil }, "perm.casagta"}, 
	["pozehouse"] = { _config = { salario = nil, ptr = nil }, "perm.pozehouse"}, 
	["homeguardiao"] = { _config = { salario = nil, ptr = nil }, "perm.homeguardiao"}, 
	["tracker"] = { _config = { salario = nil, ptr = nil }, "perm.tracker"}, 
	
	["manobras"] = { _config = { salario = nil, ptr = nil }, "perm.manobras"}, 
	["homesimples"] = { _config = { salario = nil, ptr = nil }, "perm.homesimples"},
	["scotthouse"] = { _config = { salario = nil, ptr = nil }, "perm.scotthouse"}, 
	["iatehouse"] = { _config = { salario = nil, ptr = nil }, "perm.iatehouse"}, 
	["Kalashnikov"] = { _config = { salario = nil, ptr = nil }, "perm.Kalashnikov"}, 
	["AuroraLoss"] = { _config = { salario = nil, ptr = nil }, "perm.AuroraLoss"}, 
	
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTROS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["paintball"] = { _config = { salario = nil, ptr = nil }, "player.blips", "player.noclip", "player.teleport", "player.secret", "player.spec", "player.wall" },
	["Porte de Armas"] = { _config = { salario = nil, ptr = nil }, "perm.portearmas" },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CRECHE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["DiretoriaCreche"] = { _config = { gtype = "org", salario = 5000, ptr = nil, orgName = "Creche"}, "perm.baucreche", "perm.creche" },
	["ProfessorCreche"] = { _config = { gtype = "org", salario = 5000, ptr = nil, orgName = "Creche"}, "perm.baucreche", "perm.creche" },
	["AlunoCreche"] = { _config = { gtype = "org", salario = 5000, ptr = nil, orgName = "Creche"}, "perm.creche" },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandoGeralMilitar"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Policia" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.militar", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["SubComandoGeralMilitar"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Policia" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.militar", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["Coronel"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Policia" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.militar", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["TenenteCoronel"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Policia" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.militar", "perm.countpolicia", "perm.malas","dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Major"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.openmalas", "perm.avisopm",  "perm.militar", "perm.countpolicia", "perm.malas","perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	--["Comando Gate"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.openmalas", "perm.militar", "perm.gate", "perm.abrirmalas", "perm.countpolicia", "perm.malas","dv.permissao", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Comando Speed"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "perm.openmalas", "dv.permissao", "perm.militar", "perm.speed", "perm.abrirmalas", "perm.countpolicia","perm.speed", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Comando Grpae"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "perm.openmalas", "dv.permissao", "perm.militar", "perm.grpae", "perm.abrirmalas",  "perm.countpolicia", "perm.malas","perm.grpae",  "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" },
	["Comando Rocam"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "perm.openmalas", "dv.permissao", "perm.militar", "perm.rocam", "perm.abrirmalas", "perm.countpolicia", "perm.malas","perm.rocam",  "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Capitao"] = { _config = { gtype = "org", salario = 16000, ptr = true , orgName = "Policia"}, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Primeiro Tenente"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Segundo Tenente"] = { _config = { gtype = "org", salario = 14000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Sub Tenente"] = { _config = { gtype = "org", salario = 13000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Primeiro Sargento"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Policia" }, "perm.baupolicia","perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Segundo Sargento"] = { _config = { gtype = "org", salario = 11000, ptr = true, orgName = "Policia" }, "perm.baupolicia","perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Terceiro Sargento"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Policia" }, "perm.baupolicia","perm.militar", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Cabo"] = { _config = { gtype = "org", salario = 9000, ptr = true, orgName = "Policia" }, "perm.militar", "perm.baupolicia","perm.countpolicia", "perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Soldado"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Policia" }, "perm.militar", "perm.baupolicia","perm.countpolicia", "perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Segundo Soldado"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Policia" }, "perm.militar", "perm.baupolicia","perm.countpolicia", "perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
--	["Gate"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Speed"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.speed", "perm.countpolicia", "perm.malas", "perm.speed", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },	
	["Rocam"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.rocam", "perm.countpolicia", "perm.malas", "perm.rocam", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Grpae"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Policia" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.grpae", "perm.countpolicia", "perm.malas", "perm.grpae", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Aluno"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Policia" }, "perm.militar", "perm.countpolicia", "perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },	
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- GATE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandoGeralGate"] = { _config = { gtype = "org", salario = 26000, ptr = true, orgName = "Gate" }, "dv.permissao", "perm.avisopm", "perm.lidergate", "perm.gate", "perm.abrirmalas", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["ComandoGate"] = { _config = { gtype = "org", salario = 22000, ptr = true, orgName = "Gate" }, "radio.perm","dv.permissao", "perm.avisopm", "perm.lidergate", "perm.gate", "perm.abrirmalas", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SubComandoGate"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Gate" }, "radio.perm","dv.permissao", "perm.avisopm", "perm.lidergate", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["Gate"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Gate" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["EstagiarioGate"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Gate" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["AlunoGate"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Gate" }, "perm.baupolicia", "dv.permissao", "perm.militar", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DIP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Comando DIP"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Policia" }, "dv.permissao", "perm.liderdip", "perm.cone", "perm.removeritem", "perm.barreira", "perm.baudip", "perm.avisopm", "perm.policia", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["DIP"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Policia" }, "perm.cone", "perm.removeritem", "perm.barreira", "perm.baudip", "perm.avisopm", "perm.policia", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Cot
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandoCot"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Cot" }, "perm.revivecot", "perm.lidercot", "perm.avisopm", "perm.baucot", "perm.openmalas", "dv.permissao",  "perm.baucot", "perm.abrirmalas", "perm.countpolicia", "perm.malas","perm.cot",  "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["SubComandoCot"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Cot" }, "perm.revivecot", "perm.lidercot", "perm.avisopm", "perm.baucot", "perm.openmalas", "dv.permissao",  "perm.baucot", "perm.abrirmalas", "perm.countpolicia", "perm.malas","perm.cot",  "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["SupervisorCot"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Cot" }, "perm.revivecot", "perm.baucot", "dv.permissao", "perm.baucot", "perm.countpolicia", "perm.malas", "perm.cot", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["EliteCot"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Cot" }, "dv.permissao", "perm.baucot", "perm.countpolicia", "perm.malas", "perm.cot", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["SoldadoCot"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Cot" }, "perm.baucot", "perm.countpolicia", "perm.malas", "perm.cot", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["RecrutaCot"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Cot" }, "perm.baucot", "perm.countpolicia", "perm.malas", "perm.cot", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Exercito
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["MarechalExercito"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "Exercito" }, "perm.multar", "perm.prisao",  "dv.permissao", "perm.avisopm", "perm.liderexercito",  "perm.bauexercito", "perm.abrirmalas", "perm.countpolicia", "perm.malas","perm.exercito",  "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["GeneralExercito"] = { _config = { gtype = "org", salario = 22000, ptr = true, orgName = "Exercito" }, "perm.multar", "perm.prisao", "dv.permissao", "perm.avisopm", "perm.liderexercito",   "perm.bauexercito", "perm.abrirmalas", "perm.countpolicia", "perm.malas","perm.exercito",  "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["CoronelExercito"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Exercito" },  "perm.multar", "perm.prisao", "perm.avisopm",  "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["TenenteCoronelExercito"] = { _config = { gtype = "org", salario = 19000, ptr = true, orgName = "Exercito" }, "perm.multar", "perm.prisao", "perm.avisopm",  "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["MajorExercito"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Exercito" },  "perm.prisao", "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["CapitaoExercito"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Exercito" }, "perm.prisao",  "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["TenenteExercito"] = { _config = { gtype = "org", salario = 14000, ptr = true, orgName = "Exercito" },  "perm.prisao", "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["SubtenenteExercito"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Exercito" },  "perm.prisao", "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["SargentoExercito"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Exercito" },  "perm.prisao", "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["CaboExercito"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Exercito" },  "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["SoldadoExercito"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Exercito" },  "perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
	["MedicoMilitar"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Exercito" },  "perm.tratamento","perm.bauexercito", "perm.countpolicia", "perm.malas", "perm.exercito", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal", "perm.pftt"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- got
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandanteGeralRota"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Rota" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.rota", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["SubComandanteRota"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Rota" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.rota", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["CoronelRota"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Rota" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.rota", "perm.countpolicia", "perm.malas","dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["TenenteCoronelRota"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.openmalas", "perm.avisopm",  "perm.rota", "perm.countpolicia", "perm.malas","perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["MajorRota"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.openmalas", "perm.rota", "perm.gate", "perm.abrirmalas", "perm.countpolicia", "perm.malas","dv.permissao", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["CapitaoRota"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.rota", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["PrimeiroTenenteRota"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "perm.openmalas", "dv.permissao", "perm.rota", "perm.speed", "perm.abrirmalas", "perm.countpolicia","perm.speed", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SegundoTenenteRota"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.rota", "perm.grpae", "perm.countpolicia", "perm.malas", "perm.grpae", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SubTenenteRota"] = { _config = { gtype = "org", salario = 16000, ptr = true , orgName = "Rota"}, "perm.baupolicia", "dv.permissao", "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["PrimeiroSargentoRota"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SegundoSargentoRota"] = { _config = { gtype = "org", salario = 14000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["TerceiroSargentoRota"] = { _config = { gtype = "org", salario = 13000, ptr = true, orgName = "Rota" }, "perm.baupolicia", "dv.permissao", "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["CaboRota"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Rota" }, "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SoldadoRota"] = { _config = { gtype = "org", salario = 11000, ptr = true, orgName = "Rota" }, "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["EstagiarioRota"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Rota" }, "perm.rota", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Choque
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandanteGeralChoque"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Choque" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.choque", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["SubComandanteChoque"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Choque" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.choque", "perm.countpolicia", "perm.malas", "dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips","perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal" }, 
	["CoronelChoque"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Choque" }, "perm.addporte", "perm.baupolicia", "perm.openmalas", "perm.avisopm", "perm.choque", "perm.countpolicia", "perm.malas","dv.permissao", "perm.policia", "perm.policia.padrao", "perm.snovato", "perm.baupolicialider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["TenenteCoronelChoque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.openmalas", "perm.avisopm",  "perm.choque", "perm.countpolicia", "perm.malas","perm.policia", "player.blips", "perm.policia.padrao", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["MajorChoque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.openmalas", "perm.choque", "perm.gate", "perm.abrirmalas", "perm.countpolicia", "perm.malas","dv.permissao", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["CapitaoChoque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.choque", "perm.gate", "perm.countpolicia", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["PrimeiroTenenteChoque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "perm.openmalas", "dv.permissao", "perm.choque", "perm.speed", "perm.abrirmalas", "perm.countpolicia","perm.speed", "perm.malas", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SegundoTenenteChoque"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.choque", "perm.grpae", "perm.countpolicia", "perm.malas", "perm.grpae", "perm.policia", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SubTenenteChoque"] = { _config = { gtype = "org", salario = 16000, ptr = true , orgName = "Choque"}, "perm.baupolicia", "dv.permissao", "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["PrimeiroSargentoChoque"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SegundoSargentoChoque"] = { _config = { gtype = "org", salario = 14000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["TerceiroSargentoChoque"] = { _config = { gtype = "org", salario = 13000, ptr = true, orgName = "Choque" }, "perm.baupolicia", "dv.permissao", "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["CaboChoque"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Choque" }, "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["SoldadoChoque"] = { _config = { gtype = "org", salario = 11000, ptr = true, orgName = "Choque" }, "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },
	["EstagiarioChoque"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Choque" }, "perm.choque", "perm.countpolicia", "perm.malas", "perm.policia", "perm.policia.padrao", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpoliciaNormal"  },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PRF
--------------------------------------------------------------------------------------
	["CoronelPRF"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "PRF" },  "perm.bauliderprf", "dv.permissao", "perm.lidergtf", "perm.cone", "perm.removeritem", "perm.barreira", "perm.baugtf", "perm.avisopm", "perm.prf", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["InspetorEspecialPRF"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "PRF" },  "perm.bauliderprf", "perm.cone", "perm.removeritem", "perm.barreira", "perm.baugtf", "perm.avisopm", "perm.prf", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["InspetorPRF"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "PRF" },  "perm.bauliderprf", "perm.cone", "perm.barreira", "perm.avisopm", "perm.prf", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["ComandoGRRPRF"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PRF" }, "perm.blockgtf", "perm.cone", "perm.barreira", "perm.avisopm", "perm.prf", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["GRRPRF"] = { _config = { gtype = "org", salario = 14000, ptr = true, orgName = "PRF" }, "perm.blockgtf", "perm.avisopm", "perm.prf", "perm.abrirmalas", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["AgenteEspecialPRF"] = { _config = { gtype = "org", salario = 13000, ptr = true, orgName = "PRF" }, "perm.blockgtf", "perm.avisopm", "perm.prf", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["AgentePRF"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "PRF" }, "perm.blockgtf", "perm.prf", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["AspirantePRF"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "PRF" }, "perm.blockgtf", "perm.prf", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["CadetePRF"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "PRF" }, "perm.blockgtf", "perm.prf", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- PRF
--------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA FEDERAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandanteGeralPF"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "PoliciaFederal" }, "perm.garagemdelpf","perm.pf", "perm.multar", "perm.prisao", "dv.permissao", "perm.baudelegado", "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "perm.snovato", "perm.baupoliciafederallider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["DelegadoGeralPF"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "PoliciaFederal" }, "perm.garagemdelpf","perm.pf", "perm.multar", "perm.prisao", "dv.permissao", "perm.baudelegado", "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "perm.snovato", "perm.baupoliciafederallider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["DelegadoPF"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "PoliciaFederal" }, "perm.garagemdelpf","perm.pf", "perm.multar", "perm.prisao", "dv.permissao", "perm.baudelegado", "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["DelegadoAdjuntoPF"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaFederal" }, "perm.garagemdelpf","perm.pf", "perm.multar", "perm.prisao", "dv.permissao", "perm.baudelegado", "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["ComandoGTF"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaFederal" }, "perm.pf", "perm.multar", "perm.prisao", "dv.permissao", "perm.baudelegado", "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["GTF"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "PoliciaFederal" }, "perm.pf", "perm.multar", "perm.prisao", "dv.permissao", "perm.baudelegado", "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["PeritoPF"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "PoliciaFederal" }, "perm.pf", "perm.multar", "perm.prisao",  "perm.avisopm",  "perm.abrirmalas", "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas","perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["EscrivaoPF"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "PoliciaFederal" }, "perm.pf", "perm.multar", "perm.prisao", "perm.avisopm",  "perm.countfederal", "perm.chamadoscivil", "perm.baupoliciafederal", "perm.malas", "perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["AgentePF"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "PoliciaFederal" }, "perm.pf", "perm.countfederal", "perm.chamadoscivil", "perm.policiafederal", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
		
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA CIVIL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["ComandoGeralCivil"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "PoliciaCivil" }, "perm.avisopm", "perm.openmalas", "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["DelegadoGeral"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "PoliciaCivil" }, "perm.openmalas", "perm.avisopm", "dv.permissao", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "perm.snovato", "perm.baupoliciacivillider", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Delegado"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "perm.openmalas", "dv.permissao", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Garra"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["ComandoGarra"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["ComandoGT3"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["GT3"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["ComandoGoe"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Goe"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["ComandoInvestigativa"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "PoliciaCivil" },"dv.permissao",  "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["RecrutadorCivil"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.baupoliciacivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Perito"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "PoliciaCivil" }, "perm.openmalas", "perm.baupoliciacivil","dv.permissao", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.malas","perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Investigador"] = { _config = { gtype = "org", salario = 9000, ptr = true, orgName = "PoliciaCivil" }, "perm.abrirmalas","dv.permissao", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Escrivao"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["AgenteEspecialCivil"] = { _config = { gtype = "org", salario = 25000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Agente"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "PoliciaCivil" }, "dv.permissao", "perm.countcivil", "perm.chamadoscivil", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["Recruta"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "PoliciaCivil" }, "perm.countcivil", "perm.chamadoscivil", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["EstagiarioCivil"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "PoliciaCivil" }, "perm.countcivil", "perm.chamadoscivil", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- BAEP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["CoronelBAEP"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Baep" }, "dv.permissao", "perm.multar", "perm.prisao", "perm.baucore", "perm.avisopmpm", "perm.baep", "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["TenenteCoronelBAEP"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Baep" }, "perm.multar", "perm.prisao", "perm.baucore", "perm.avisopm", "perm.baep",  "perm.abrirmalas", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["MajorBAEP"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Baep" }, "perm.prisao", "perm.baucore", "perm.avisopm", "perm.baep", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["CapitaoBAEP"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Baep" }, "perm.prisao", "perm.baucore", "perm.avisopm", "perm.baep", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["TenenteBAEP"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Baep" }, "perm.prisao", "perm.baep", "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["SubTenenteBAEP"] = { _config = { gtype = "org", salario = 9000, ptr = true, orgName = "Baep" }, "perm.prisao", "perm.baep",  "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["CaboBAEP"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Baep" }, "perm.baep",  "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
	["SoldadoBAEP"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Baep" }, "perm.baep",  "perm.countcivil", "perm.chamadoscivil", "perm.malas", "perm.policiacivil", "player.blips", "perm.disparo", "perm.portasolicia", "perm.algemar", "perm.countpolicia", "perm.radiopm"  },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- HOSPITAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["DiretorHP"] = { _config = { gtype = "org", salario = 27000, ptr = true, orgName = "Hospital" }, "perm.heliunizk","perm.liderhp", "perm.chamadoshp","perm.bauunizk", "perm.avisohp", "dv.permissao", "perm.unizk", "perm.algemar" },
	["ViceDiretorHP"] = { _config = { gtype = "org", salario = 22000, ptr = true, orgName = "Hospital"}, "perm.heliunizk","perm.liderhp", "perm.chamadoshp","perm.bauunizk", "perm.avisohp", "dv.permissao", "perm.unizk", "perm.algemar" },
	["GestaoHP"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Hospital"}, "perm.heliunizk","perm.liderhp", "perm.chamadoshp","perm.bauunizk", "perm.avisohp", "dv.permissao", "perm.unizk", "perm.algemar" },
	["PsiquiatraHP"] = { _config = { gtype = "org", salario = 19000, ptr = true, orgName = "Hospital"}, "perm.heliunizk","perm.chamadoshp","dv.permissao", "perm.unizk", "perm.algemar" },
	["MedicoHP"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Hospital"}, "perm.heliunizk","perm.chamadoshp","dv.permissao", "perm.unizk", "perm.algemar" },
	["EnfermeiroHP"] = { _config = { gtype = "org", salario = 17000, ptr = true, orgName = "Hospital"},"perm.chamadoshp", "perm.unizk" },
	["SocorristaHP"] = { _config = { gtype = "org", salario = 16000, ptr = true, orgName = "Hospital"},"perm.chamadoshp", "perm.unizk" },

	["CoronelBombeiro"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Bombeiro" }, "perm.baubombeiro", "perm.chamadoshp", "perm.avisobombeiro",  "perm.bombeiro", "perm.algemar" },
	["TenenteCoronelBombeiro"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Bombeiro"}, "perm.baubombeiro", "perm.chamadoshp", "perm.avisobombeiro",  "perm.bombeiro", "perm.algemar" },
	["MajorBombeiro"] = { _config = { gtype = "org", salario = 15000, ptr = true, orgName = "Bombeiro"}, "perm.chamadoshp", "perm.avisobombeiro",  "perm.bombeiro", "perm.algemar" },
	["CapitaoBombeiro"] = { _config = { gtype = "org", salario = 12000, ptr = true, orgName = "Bombeiro"}, "perm.chamadoshp", "perm.bombeiro", "perm.algemar" },
	["TenenteBombeiro"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Bombeiro"}, "perm.chamadoshp", "perm.bombeiro", "perm.algemar" },
	["AspiranteBombeiro"] = { _config = { gtype = "org", salario = 8000, ptr = true, orgName = "Bombeiro"}, "perm.chamadoshp", "perm.bombeiro" },
	["AlunoOficialBombeiro"] = { _config = { gtype = "org", salario = 7000, ptr = true, orgName = "Bombeiro"}, "perm.chamadoshp", "perm.bombeiro" },

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- JUDICIARIO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Juiz"] = { _config = { gtype = "org", salario = 25000, ptr = nil, orgName = "Judiciario"}, "dv.permissao", "perm.judiciario", "perm.liderjudiciario" },
	["Procurador"] = { _config = { gtype = "org", salario = 23000, ptr = nil, orgName = "Judiciario"}, "dv.permissao", "perm.judiciario", "perm.liderjudiciario" },
	["Promotor"] = { _config = { gtype = "org", salario = 20000, ptr = nil, orgName = "Judiciario"}, "dv.permissao", "perm.judiciario", "perm.liderjudiciario" },
	["Advogado"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	["Desembargador"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	["Supervisor"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	["PresidenteOab"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	["SegurancaForum"] = { _config = { gtype = "org", salario = 18000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	["RepresentanteDp"] = { _config = { gtype = "org", salario = 10000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	["EstagiarioJudiciario"] = { _config = { gtype = "org", salario = 10000, ptr = nil, orgName = "Judiciario"}, "perm.judiciario" },
	
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- JORNAL
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["DiretorJornal"] = { _config = { gtype = "org", salario = 20000, ptr = true, orgName = "Jornal"}, "perm.pjornal", "perm.baujornal", "perm.jornal" },
	["SubDiretorJornal"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Jornal"}, "perm.pjornal", "perm.baujornal", "perm.jornal" },
	["ProdutorJornal"] = { _config = { gtype = "org", salario = 18000, ptr = true, orgName = "Jornal"}, "perm.pjornal", "perm.baujornal", "perm.jornal" },
	["Reporter"] = { _config = { gtype = "org", salario = 13000, ptr = true, orgName = "Jornal"}, "perm.pjornal", "perm.jornal" },
	["EstagiarioJornal"] = { _config = { gtype = "org", salario = 10000, ptr = true, orgName = "Jornal"}, "perm.jornal" },
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  /groupadd 1 "lider bloods"
-- ARMAS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	["Lider [GROTA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grota", orgType = "fArmas"}, "perm.recrutadorgrota","perm.ba", "perm.gerentegrota", "perm.grota", "perm.lidergrota", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baugrota"},
	["Sub-Lider [GROTA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grota", orgType = "fArmas" }, "perm.recrutadorgrota","perm.ba", "perm.gerentegrota", "perm.lidergrota", "perm.grota", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baugrota"},
	["Gerente [GROTA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grota", orgType = "fArmas" }, "perm.recrutadorgrota","perm.ba", "perm.gerentegrota", "perm.grota", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baugrota"},
	["Membro [GROTA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grota", orgType = "fArmas" }, "perm.ba", "perm.grota", "perm.arma", "perm.ilegal", "perm.snovato", "perm.baugrota"},
	["Novato [GROTA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grota", orgType = "fArmas" }, "perm.ba", "perm.grota", "perm.arma", "perm.ilegal"},
	["Recrutador [GROTA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grota", orgType = "fArmas" }, "perm.recrutadorgrota","perm.ba", "perm.recrutador", "perm.baugrota", "perm.grota", "perm.arma", "perm.ilegal"},
	
	["Lider [MAFIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Mafia", orgType = "fArmas"}, "perm.areb", "perm.gerentemafia", "perm.mafia", "perm.lidermafia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumafia"},
	["Sub-Lider [MAFIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.areb", "perm.gerentemafia", "perm.lidermafia", "perm.mafia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumafia"},
	["Gerente [MAFIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Mafia", orgType = "fArmas" },"perm.areb",  "perm.gerentemafia", "perm.mafia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumafia"},
	["Membro [MAFIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.areb", "perm.mafia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.baumafia"},
	["Novato [MAFIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.areb", "perm.mafia", "perm.arma", "perm.ilegal"},
	["Recrutador [MAFIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Mafia", orgType = "fArmas" }, "perm.areb", "perm.recrutador", "perm.baumafia", "perm.mafia", "perm.arma", "perm.ilegal"},

	["Lider [PCC]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pcc", orgType = "fArmas"}, "perm.areb", "perm.gerentepcc", "perm.pcc", "perm.liderpcc", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baupcc"},
	["Sub-Lider [PCC]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pcc", orgType = "fArmas" }, "perm.areb", "perm.gerentepcc", "perm.liderpcc", "perm.pcc", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baupcc"},
	["Gerente [PCC]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pcc", orgType = "fArmas" },"perm.areb",  "perm.gerentepcc", "perm.pcc", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baupcc"},
	["Membro [PCC]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pcc", orgType = "fArmas" }, "perm.areb", "perm.pcc", "perm.arma", "perm.ilegal", "perm.snovato", "perm.baupcc"},
	["Novato [PCC]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pcc", orgType = "fArmas" }, "perm.areb", "perm.pcc", "perm.arma", "perm.ilegal"},
	["Recrutador [PCC]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pcc", orgType = "fArmas" }, "perm.areb", "perm.recrutador", "perm.baupcc", "perm.pcc", "perm.arma", "perm.ilegal"},

	["Lider [MERCENARIOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mercenarios", orgType = "fArmas"}, "perm.areb", "perm.gerentemercenarios", "perm.mercenarios", "perm.lidermercenarios", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumercenarios"},
	["Sub-Lider [MERCENARIOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mercenarios", orgType = "fArmas" }, "perm.areb", "perm.gerentemercenarios", "perm.lidermercenarios", "perm.mercenarios", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumercenarios"},
	["Gerente [MERCENARIOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mercenarios", orgType = "fArmas" },"perm.areb",  "perm.gerentemercenarios", "perm.mercenarios", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumercenarios"},
	["Membro [MERCENARIOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mercenarios", orgType = "fArmas" }, "perm.areb", "perm.mercenarios", "perm.arma", "perm.ilegal", "perm.snovato", "perm.baumercenarios"},
	["Novato [MERCENARIOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mercenarios", orgType = "fArmas" }, "perm.areb", "perm.mercenarios", "perm.arma", "perm.ilegal"},
	["Recrutador [MERCENARIOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mercenarios", orgType = "fArmas" }, "perm.areb", "perm.recrutador", "perm.baumercenarios", "perm.mercenarios", "perm.arma", "perm.ilegal"},

	["Lider [ILLUMINATTI]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Illuminatti", orgType = "fArmas"}, "perm.areb", "perm.gerenteilluminatti", "perm.illuminatti", "perm.liderilluminatti", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauilluminatti"},
	["Sub-Lider [ILLUMINATTI]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Illuminatti", orgType = "fArmas" }, "perm.areb", "perm.gerenteilluminatti", "perm.liderilluminatti", "perm.illuminatti", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauilluminatti"},
	["Gerente [ILLUMINATTI]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Illuminatti", orgType = "fArmas" },"perm.areb",  "perm.gerenteilluminatti", "perm.illuminatti", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauilluminatti"},
	["Membro [ILLUMINATTI]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Illuminatti", orgType = "fArmas" }, "perm.areb", "perm.illuminatti", "perm.arma", "perm.ilegal", "perm.snovato", "perm.bauilluminatti"},
	["Novato [ILLUMINATTI]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Illuminatti", orgType = "fArmas" }, "perm.areb", "perm.illuminatti", "perm.arma", "perm.ilegal"},
	["Recrutador [ILLUMINATTI]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Illuminatti", orgType = "fArmas" }, "perm.areb", "perm.recrutador", "perm.bauilluminatti", "perm.illuminatti", "perm.arma", "perm.ilegal"},

	["Lider [PLAYBOY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Playboy", orgType = "fArmas"}, "perm.gerenteliderplayboy", "perm.playboy", "perm.liderplayboy", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauplayboy"},
	["Sub-Lider [PLAYBOY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Playboy", orgType = "fArmas"}, "perm.gerenteliderplayboy", "perm.liderplayboy", "perm.playboy", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauplayboy"},
	["Gerente [PLAYBOY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Playboy", orgType = "fArmas"}, "perm.gerenteliderplayboy", "perm.playboy", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauplayboy"},
	["Membro [PLAYBOY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Playboy", orgType = "fArmas"}, "perm.playboy", "perm.arma", "perm.ilegal", "perm.snovato", "perm.bauplayboy"},
	["Novato [PLAYBOY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Playboy", orgType = "fArmas"}, "perm.playboy", "perm.arma", "perm.ilegal"},
	["Recrutador [PLAYBOY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Playboy", orgType = "fArmas" }, "perm.recrutador", "perm.bauplayboy", "perm.playboy", "perm.arma", "perm.ilegal"},

	["Lider [TROIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Troia", orgType = "fArmas"}, "perm.gerentetroia", "perm.lidertroia", "perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Sub-Lider [TROIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Troia", orgType = "fArmas"}, "perm.gerentetroia","perm.lidertroia", "perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Gerente [TROIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Troia", orgType = "fArmas"}, "perm.gerentetroia","perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Membro [TROIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Troia", orgType = "fArmas"}, "perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.bautroia"},
	["Novato [TROIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Troia", orgType = "fArmas"}, "perm.troia", "perm.arma", "perm.ilegal"},
	["Recrutador [TROIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Troia", orgType = "fArmas"}, "perm.recrutador", "perm.bautroia", "perm.troia", "perm.arma", "perm.ilegal"},
	
	
	--[[["Lider [MILICIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Milicia", orgType = "fArmas"}, "perm.gerentetroia", "perm.lidertroia", "perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Sub-Lider [MILICIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Milicia", orgType = "fArmas"}, "perm.gerentetroia","perm.lidertroia", "perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Gerente [MILICIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Milicia", orgType = "fArmas"}, "perm.gerentetroia","perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Membro [MILICIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Milicia", orgType = "fArmas"}, "perm.troia", "perm.arma", "perm.ilegal", "perm.snovato", "perm.bautroia"},
	["Novato [MILICIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Milicia", orgType = "fArmas"}, "perm.troia", "perm.arma", "perm.ilegal"},
	["Recrutador [MILICIA]"] = { _config = { gtype = "org", salario = 32000, ptr = nil, orgName = "Milicia", orgType = "fArmas"}, "perm.recrutador", "perm.bautroia", "perm.troia", "perm.arma", "perm.ilegal"},
--]]
	["Lider [HELIPA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Helipa", orgType = "fArmas"}, "perm.ba", "perm.gerentehelipa", "perm.helipa", "perm.liderhelipa", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauhelipa"},
	["Sub-Lider [HELIPA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Helipa", orgType = "fArmas" }, "perm.ba", "perm.gerentehelipa", "perm.liderhelipa", "perm.helipa", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauhelipa"},
	["Gerente [HELIPA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Helipa", orgType = "fArmas" }, "perm.ba", "perm.gerentehelipa", "perm.helipa", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauhelipa"},
	["Membro [HELIPA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Helipa", orgType = "fArmas" }, "perm.ba", "perm.helipa", "perm.arma", "perm.ilegal", "perm.snovato", "perm.bauhelipa"},
	["Novato [HELIPA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Helipa", orgType = "fArmas" }, "perm.ba", "perm.helipa", "perm.arma", "perm.ilegal"},
	["Recrutador [HELIPA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Helipa", orgType = "fArmas" }, "perm.ba", "perm.recrutador", "perm.bauhelipa", "perm.helipa", "perm.arma", "perm.ilegal"},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  /groupadd 1 "lider bloods"
-- DESMANCHE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	["Lider [LACOSTE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lacoste", orgType = "fDesmanche" }, "perm.gerentelacoste", "perm.lacoste", "perm.snovato", "perm.gerente", "perm.liderlacoste", "perm.baulacoste", "perm.desmanche", "perm.ilegal"},
	["Sub-Lider [LACOSTE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lacoste", orgType = "fDesmanche" }, "perm.gerentelacoste", "perm.lacoste", "perm.snovato", "perm.gerente", "perm.baulacoste","perm.liderlacoste",  "perm.desmanche", "perm.ilegal"},
	["Gerente [LACOSTE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lacoste", orgType = "fDesmanche" }, "perm.gerentelacoste", "perm.lacoste", "perm.snovato", "perm.gerente", "perm.baulacoste", "perm.desmanche", "perm.ilegal"},
	["Membro [LACOSTE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lacoste", orgType = "fDesmanche" }, "perm.lacoste", "perm.snovato", "perm.baulacoste", "perm.desmanche", "perm.ilegal"},
	["Novato [LACOSTE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lacoste", orgType = "fDesmanche" }, "perm.lacoste", "perm.ilegal"},
	["Recrutador [LACOSTE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lacoste", orgType = "fDesmanche" }, "perm.recrutador", "perm.baulacoste", "perm.lacoste", "perm.desmanche", "perm.ilegal"},

	["Lider [ROXOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Roxos", orgType = "fDesmanche" }, "perm.gerenteroxos", "perm.roxos", "perm.snovato", "perm.gerente", "perm.liderroxos", "perm.bauroxos", "perm.desmanche", "perm.ilegal"},
	["Sub-Lider [ROXOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Roxos", orgType = "fDesmanche" }, "perm.gerenteroxos", "perm.roxos", "perm.snovato", "perm.gerente", "perm.bauroxos","perm.liderroxos",  "perm.desmanche", "perm.ilegal"},
	["Gerente [ROXOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Roxos", orgType = "fDesmanche" }, "perm.gerenteroxos", "perm.roxos", "perm.snovato", "perm.gerente", "perm.bauroxos", "perm.desmanche", "perm.ilegal"},
	["Membro [ROXOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Roxos", orgType = "fDesmanche" }, "perm.roxos", "perm.snovato", "perm.bauroxos", "perm.desmanche", "perm.ilegal"},
	["Novato [ROXOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Roxos", orgType = "fDesmanche" }, "perm.roxos", "perm.ilegal"},
	["Recrutador [ROXOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Roxos", orgType = "fDesmanche" }, "perm.recrutador", "perm.bauroxos", "perm.roxos", "perm.desmanche", "perm.ilegal"},
	
	--MOTOCLUBE--
	["Lider [MOTOCLUBE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "MotoClube", orgType = "fDesmanche"}, "perm.gerentelidermotoclube", "perm.motoclube", "perm.lidermotoclube", "perm.gerentemotoclube", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumotoclube"},
	["Sub-Lider [MOTOCLUBE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "MotoClube", orgType = "fDesmanche"}, "perm.gerentelidermotoclube", "perm.lidermotoclube", "perm.gerentemotoclube", "perm.motoclube", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumotoclube"},
	["Gerente [MOTOCLUBE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "MotoClube", orgType = "fDesmanche"}, "perm.gerentelidermotoclube", "perm.gerentemotoclube", "perm.motoclube", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baumotoclube"},
	["Membro [MOTOCLUBE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "MotoClube", orgType = "fDesmanche"}, "perm.motoclube", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.baumotoclube"},
	["Novato [MOTOCLUBE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "MotoClube", orgType = "fDesmanche"}, "perm.motoclube", "perm.ilegal"},
	["Recrutador [MOTOCLUBE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "MotoClube", orgType = "fDesmanche"}, "perm.recrutador", "perm.baumotoclube", "perm.motoclube", "perm.desmanche", "perm.ilegal"},

	["Lider [HELLSANGELS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "HellsAngels", orgType = "fDesmanche" }, "perm.gerentehellsangels", "perm.hellsangels", "perm.snovato", "perm.gerente", "perm.liderhellsangels", "perm.bauhellsangels", "perm.desmanche", "perm.ilegal"},
	["Sub-Lider [HELLSANGELS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "HellsAngels", orgType = "fDesmanche" }, "perm.gerentehellsangels", "perm.hellsangels", "perm.snovato", "perm.gerente", "perm.bauhellsangels","perm.liderhellsangels",  "perm.desmanche", "perm.ilegal"},
	["Gerente [HELLSANGELS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "HellsAngels", orgType = "fDesmanche" }, "perm.gerentehellsangels", "perm.hellsangels", "perm.snovato", "perm.gerente", "perm.bauhellsangels", "perm.desmanche", "perm.ilegal"},
	["Membro [HELLSANGELS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "HellsAngels", orgType = "fDesmanche" }, "perm.hellsangels", "perm.snovato", "perm.bauhellsangels", "perm.desmanche", "perm.ilegal"},
	["Novato [HELLSANGELS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "HellsAngels", orgType = "fDesmanche" }, "perm.hellsangels", "perm.ilegal"},
	["Recrutador [HELLSANGELS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "HellsAngels", orgType = "fDesmanche" }, "perm.recrutador", "perm.bauhellsangels", "perm.hellsangels", "perm.desmanche", "perm.ilegal"},
		
	["Lider [PEDREIRA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pedreira", orgType = "fDesmanche"}, "perm.gerentepedreira", "perm.liderpedreira", "perm.pedreira", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baupedreira"},
	["Sub-Lider [PEDREIRA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pedreira", orgType = "fDesmanche"}, "perm.gerentepedreira","perm.liderpedreira", "perm.pedreira", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baupedreira"},
	["Gerente [PEDREIRA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pedreira", orgType = "fDesmanche"}, "perm.gerentepedreira","perm.pedreira", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baupedreira"},
	["Membro [PEDREIRA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pedreira", orgType = "fDesmanche"}, "perm.pedreira", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.baupedreira"},
	["Novato [PEDREIRA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pedreira", orgType = "fDesmanche"}, "perm.pedreira", "perm.ilegal"},
	["Recrutador [PEDREIRA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Pedreira", orgType = "fDesmanche"}, "perm.recrutador", "perm.baupedreira", "perm.pedreira", "perm.desmanche", "perm.ilegal"},
	
	--[[["Lider [PEAKYBLINDERS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "PeakyBlinders", orgType = "fArmas"}, "perm.gerentepeakyblinders", "perm.peakyblinders", "perm.liderpeakyblinders", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baupeakyblinders"},
	["Sub-Lider [PEAKYBLINDERS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "PeakyBlinders", orgType = "fArmas"}, "perm.gerentepeakyblinders", "perm.liderpeakyblinders", "perm.peakyblinders", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baupeakyblinders"},
	["Gerente [PEAKYBLINDERS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "PeakyBlinders", orgType = "fArmas"}, "perm.gerentepeakyblinders", "perm.peakyblinders", "perm.arma", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.baupeakyblinders"},
	["Membro [PEAKYBLINDERS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "PeakyBlinders", orgType = "fArmas"}, "perm.peakyblinders", "perm.arma", "perm.ilegal", "perm.snovato", "perm.baupeakyblinders"},
	["Novato [PEAKYBLINDERS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "PeakyBlinders", orgType = "fArmas"}, "perm.peakyblinders", "perm.arma", "perm.ilegal"},
	["Recrutador [PEAKYBLINDERS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "PeakyBlinders", orgType = "fArmas"}, "perm.recrutador", "perm.baupeakyblinders", "perm.peakyblinders", "perm.arma", "perm.ilegal"},
	--]]
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- MUNIÇÃO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--MEXICO--
	["Lider [MEXICO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mexico", orgType = "fMunicao"}, "perm.gerentelidermexico", "perm.baulidermexico", "perm.mexico", "perm.lidermexico", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumexico"},
	["Sub-Lider [MEXICO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mexico", orgType = "fMunicao"}, "perm.gerentelidermexico",  "perm.baulidermexico", "perm.lidermexico", "perm.mexico", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumexico"},
	["Gerente [MEXICO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mexico", orgType = "fMunicao"}, "perm.gerentelidermexico", "perm.baulidermexico", "perm.mexico", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumexico"},
	["Membro [MEXICO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mexico", orgType = "fMunicao"}, "perm.baulidermexico", "perm.mexico", "perm.muni", "perm.ilegal", "perm.snovato", "perm.baumexico"},
	["Novato [MEXICO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mexico", orgType = "fMunicao"}, "perm.mexico", "perm.muni", "perm.ilegal"},
	["Recrutador [MEXICO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mexico", orgType = "fMunicao"}, "perm.recrutador", "perm.baumexico", "perm.mexico", "perm.muni", "perm.ilegal"},
	
	--FRANCA--
	["Lider [FRANCA]"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Franca", orgType = "fMunicao"}, "perm.recrutadorfranca","perm.gerenteliderfranca", "perm.bauliderfranca", "perm.franca", "perm.liderfranca", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baufranca"},
	["Sub-Lider [FRANCA]"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Franca", orgType = "fMunicao"}, "perm.recrutadorfranca","perm.gerenteliderfranca",  "perm.bauliderfranca", "perm.liderfranca", "perm.franca", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baufranca"},
	["Gerente [FRANCA]"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Franca", orgType = "fMunicao"}, "perm.recrutadorfranca","perm.gerenteliderfranca", "perm.bauliderfranca", "perm.franca", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baufranca"},
	["Membro [FRANCA]"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Franca", orgType = "fMunicao"}, "perm.bauliderfranca", "perm.franca", "perm.muni", "perm.ilegal", "perm.snovato", "perm.baufranca"},
	["Novato [FRANCA]"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Franca", orgType = "fMunicao"}, "perm.franca", "perm.muni", "perm.ilegal"},
	["Recrutador [FRANCA]"] = { _config = { gtype = "org", salario = 15000, ptr = nil, orgName = "Franca", orgType = "fMunicao"}, "perm.recrutadorfranca","perm.recrutador", "perm.baufranca", "perm.franca", "perm.muni", "perm.ilegal"},
		
	--ESCOCIA--
	["Lider [ESCOCIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Escocia", orgType = "fMunicao"}, "perm.gerenteescocia", "perm.areb","perm.escocia", "perm.liderescocia", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauescocia"},
	["Sub-Lider [ESCOCIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Escocia", orgType = "fMunicao"}, "perm.gerenteescocia", "perm.areb","perm.liderescocia", "perm.escocia", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauescocia"},
	["Gerente [ESCOCIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Escocia", orgType = "fMunicao"}, "perm.gerenteescocia", "perm.areb","perm.escocia", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauescocia"},
	["Membro [ESCOCIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Escocia", orgType = "fMunicao"}, "perm.areb","perm.escocia", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bauescocia"},
	["Novato [ESCOCIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Escocia", orgType = "fMunicao"}, "perm.areb","perm.escocia", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [ESCOCIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Escocia", orgType = "fMunicao"}, "perm.areb","perm.recrutador", "perm.bauescocia", "perm.escocia", "perm.metanfetamina", "perm.ilegal"},

	--YAKUZA--
	["Lider [YAKUZA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.gerentelideryakuza", "perm.yakuza", "perm.lideryakuza", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauyakuza"},
	["Sub-Lider [YAKUZA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.gerentelideryakuza", "perm.lideryakuza", "perm.yakuza", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauyakuza"},
	["Gerente [YAKUZA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.gerentelideryakuza", "perm.yakuza", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauyakuza"},
	["Membro [YAKUZA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.yakuza", "perm.muni", "perm.ilegal", "perm.snovato", "perm.bauyakuza"},
	["Novato [YAKUZA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.yakuza", "perm.muni", "perm.ilegal"},
	["Recrutador [YAKUZA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Yakuza", orgType = "fMunicao"}, "perm.recrutador", "perm.bauyakuza", "perm.yakuza", "perm.muni", "perm.ilegal"},

	--RUSSIA-- 
	["Lider [RUSSIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Russia", orgType = "fMunicao"}, "perm.gerenterussia", "perm.russia", "perm.liderrussia", "perm.drogas", "perm.muni", "perm.ilegal", "perm.baurussia","perm.snovato", "perm.gerente", "perm.bauliderrussia"},
	["Sub-Lider [RUSSIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Russia", orgType = "fMunicao"}, "perm.gerenterussia", "perm.liderrussia", "perm.russia", "perm.drogas", "perm.ilegal", "perm.muni", "perm.baurussia","perm.snovato", "perm.gerente", "perm.bauliderrussia"},
	["Gerente [RUSSIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Russia", orgType = "fMunicao"}, "perm.gerenterussia", "perm.russia", "perm.drogas", "perm.ilegal", "perm.muni", "perm.snovato", "perm.gerente", "perm.baurussia"},
	["Membro [RUSSIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Russia", orgType = "fMunicao"}, "perm.russia", "perm.drogas", "perm.ilegal", "perm.muni", "perm.snovato", "perm.baurussia"},
	["Novato [RUSSIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Russia", orgType = "fMunicao"}, "perm.russia", "perm.drogas", "perm.muni", "perm.ilegal"},
	["Recrutador [RUSSIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Russia", orgType = "fMunicao"}, "perm.recrutador", "perm.baurussia", "perm.russia", "perm.drogas", "perm.muni", "perm.ilegal"},
	
	--TATUAPECONCEITO--
	["Lider [TATUAPECONCEITO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TatuapeConceito", orgType = "fMunicao"}, "perm.gerenteconceito", "perm.tatuapeconceito", "perm.liderconceito", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauconceito"},
	["Sub-Lider [TATUAPECONCEITO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TatuapeConceito", orgType = "fMunicao"}, "perm.gerenteconceito", "perm.liderconceito", "perm.tatuapeconceito", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauconceito"},
	["Gerente [TATUAPECONCEITO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TatuapeConceito", orgType = "fMunicao"}, "perm.gerenteconceito", "perm.tatuapeconceito", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauconceito"},
	["Membro [TATUAPECONCEITO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TatuapeConceito", orgType = "fMunicao"}, "perm.tatuapeconceito", "perm.muni", "perm.ilegal", "perm.snovato", "perm.bauconceito"},
	["Novato [TATUAPECONCEITO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TatuapeConceito", orgType = "fMunicao"}, "perm.tatuapeconceito", "perm.muni", "perm.ilegal"},
	["Recrutador [TATUAPECONCEITO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TatuapeConceito", orgType = "fMunicao"}, "perm.recrutador", "perm.bauconceito", "perm.tatuapeconceito", "perm.muni", "perm.ilegal"},
	
	--ESPANHA--
	["Lider [ESPANHA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Espanha", orgType = "fMunicao"}, "perm.gerenteespanha", "perm.espanha", "perm.liderespanha", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauespanha"},
	["Sub-Lider [ESPANHA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Espanha", orgType = "fMunicao"}, "perm.gerenteespanha", "perm.liderespanha", "perm.espanha", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauespanha"},
	["Gerente [ESPANHA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Espanha", orgType = "fMunicao"}, "perm.gerenteespanha", "perm.espanha", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauespanha"},
	["Membro [ESPANHA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Espanha", orgType = "fMunicao"}, "perm.espanha", "perm.muni", "perm.ilegal", "perm.snovato", "perm.bauespanha"},
	["Novato [ESPANHA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Espanha", orgType = "fMunicao"}, "perm.espanha", "perm.muni", "perm.ilegal"},
	["Recrutador [ESPANHA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Espanha", orgType = "fMunicao"}, "perm.recrutador", "perm.bauespanha", "perm.espanha", "perm.muni", "perm.ilegal"},

	["Lider [VATICANO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vaticano", orgType = "fMunicao"}, "perm.recrutadorvaticano", "perm.gerentevaticano", "perm.vaticano", "perm.lidervaticano", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauvaticano"},
	["Sub-Lider [VATICANO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vaticano", orgType = "fMunicao"}, "perm.recrutadorvaticano", "perm.gerentevaticano", "perm.lidervaticano", "perm.vaticano", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauvaticano"},
	["Gerente [VATICANO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vaticano", orgType = "fMunicao"}, "perm.gerentevaticano", "perm.vaticano", "perm.muni", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauvaticano"},
	["Membro [VATICANO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vaticano", orgType = "fMunicao"}, "perm.vaticano", "perm.muni", "perm.ilegal", "perm.snovato" },
	["Novato [VATICANO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vaticano", orgType = "fMunicao"}, "perm.vaticano", "perm.muni", "perm.ilegal"},
	["Recrutador [VATICANO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vaticano", orgType = "fMunicao"}, "perm.recrutadorvaticano", "perm.recrutador", "perm.bauvaticano", "perm.vaticano", "perm.muni", "perm.ilegal"},
	
	--[[--CHINA--
	["Lider [CHINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "China", orgType = "Drogas"}, "perm.gerentechina", "perm.liderchina", "perm.china", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauchina"},
	["Sub-Lider [CHINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "China", orgType = "Drogas"}, "perm.gerentechina", "perm.liderchina", "perm.china", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauchina"},
	["Gerente [CHINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "China", orgType = "Drogas"}, "perm.gerentechina", "perm.china", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauchina"},
	["Membro [CHINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "China", orgType = "Drogas"}, "perm.china", "perm.opio", "perm.ilegal", "perm.snovato", "perm.bauchina"},
	["Novato [CHINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "China", orgType = "Drogas"}, "perm.china", "perm.opio", "perm.ilegal"},
	["Recrutador [CHINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "China", orgType = "Drogas"}, "perm.recrutador", "perm.bauchina", "perm.china", "perm.opio", "perm.ilegal"},

	--TRIADE-
	["Lider [TRIADE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Triade", orgType = "Drogas"}, "perm.recrutadortriade", "perm.gerentetriade", "perm.triade", "perm.lidertriade", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bautriade"},
	["Sub-Lider [TRIADE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Triade", orgType = "Drogas"}, "perm.recrutadortriade", "perm.gerentetriade", "perm.lidertriade", "perm.triade", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bautriade"},
	["Gerente [TRIADE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Triade", orgType = "Drogas"}, "perm.gerentetriade", "perm.triade", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bautriade"},
	["Membro [TRIADE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Triade", orgType = "Drogas"}, "perm.triade", "perm.opio", "perm.ilegal", "perm.snovato" },
	["Novato [TRIADE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Triade", orgType = "Drogas"}, "perm.triade", "perm.opio", "perm.ilegal"},
	["Recrutador [TRIADE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Triade", orgType = "Drogas"}, "perm.recrutadortriade", "perm.recrutador", "perm.bautriade", "perm.triade", "perm.opio", "perm.ilegal"},
	--]]

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DESMANCHE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	


	--TURQUIA--
	--[[["Lider [TURQUIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.gerenteturquia", "perm.liderturquia", "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauturquia", "perm.bauliderturquia"},
	["Sub-Lider [TURQUIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.gerenteturquia", "perm.liderturquia", "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.gerente",  "perm.bauturquia", "perm.bauliderturquia"},
	["Gerente [TURQUIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.gerenteturquia", "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.bauturquia", "perm.snovato", "perm.gerente",  "perm.bauliderturquia"},
	["Membro [TURQUIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.turquia", "perm.desmanche", "perm.ilegal", "perm.snovato", "perm.bauturquia"},
	["Novato [TURQUIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.turquia", "perm.desmanche", "perm.ilegal"},
	["Recrutador [TURQUIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Turquia", orgType = "fDesmanche"}, "perm.recrutador", "perm.bauturquia", "perm.turquia", "perm.desmanche", "perm.ilegal"},
	--]]


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LAVAGEM
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--BAHAMAS--
	["Lider [BAHAMAS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentebahamas", "perm.ba", "perm.liderbahamas", "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubahamas"},
	["Sub-Lider [BAHAMAS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentebahamas","perm.ba", "perm.liderbahamas", "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubahamas"},
	["Gerente [BAHAMAS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"},"perm.craftlavagem","perm.gerentebahamas","perm.ba", "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubahamas"},
	["Membro [BAHAMAS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.ba", "perm.bahamas", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.baubahamas"},
	["Novato [BAHAMAS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.ba", "perm.bahamas", "perm.lavagem", "perm.ilegal"},
	["Recrutador [BAHAMAS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bahamas", orgType = "fLavagem"}, "perm.ba", "perm.recrutador", "perm.baubahamas", "perm.bahamas", "perm.lavagem", "perm.ilegal"},

	["Lider [LUX]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lux", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelux", "perm.lux", "perm.liderlux", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baulux"},
	["Sub-Lider [LUX]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lux", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelux", "perm.liderlux", "perm.lux", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baulux"},
	["Gerente [LUX]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lux", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelux", "perm.lux", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baulux"},
	["Membro [LUX]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lux", orgType = "fLavagem"}, "perm.lux", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.baulux"},
	["Novato [LUX]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lux", orgType = "fLavagem"}, "perm.lux", "perm.lavagem", "perm.ilegal"},
	["Recrutador [LUX]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lux", orgType = "fLavagem"}, "perm.recrutador", "perm.baulux", "perm.lux", "perm.lavagem", "perm.ilegal"},

	["Lider [MEDUSA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medusa", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentemedusa", "perm.medusa", "perm.lidermedusa", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumedusa"},
	["Sub-Lider [MEDUSA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medusa", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentemedusa", "perm.lidermedusa", "perm.medusa", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumedusa"},
	["Gerente [MEDUSA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medusa", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentemedusa", "perm.medusa", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumedusa"},
	["Membro [MEDUSA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medusa", orgType = "fLavagem"}, "perm.medusa", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.baumedusa"},
	["Novato [MEDUSA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medusa", orgType = "fLavagem"}, "perm.medusa", "perm.lavagem", "perm.ilegal"},
	["Recrutador [MEDUSA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medusa", orgType = "fLavagem"}, "perm.recrutador", "perm.baumedusa", "perm.medusa", "perm.lavagem", "perm.ilegal"},

	--CASSINO--
	["Lider [CASSINO]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.craftlavagem","perm.fulllidercassino", "perm.gerentecassino", "perm.cassino", "perm.lidercassino", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.gerente", "perm.baucassino", "perm.baulidercassino"},
	["Sub-Lider [CASSINO]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentecassino", "perm.lidercassino", "perm.cassino", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baucassino", "perm.baulidercassino"},
	["Gerente [CASSINO]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentecassino", "perm.cassino", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baucassino", "perm.baulidercassino"},
	["Membro [CASSINO]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.cassino", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.baucassino"},
	["Novato [CASSINO]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.cassino", "perm.lavagem", "perm.ilegal"},
	["Recrutador [CASSINO]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Cassino", orgType = "fLavagem"}, "perm.recrutador", "perm.baucassino", "perm.cassino", "perm.lavagem", "perm.ilegal"},

	-- GR6EXPLODE
	["Lider [GR6EXPLODE]"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "GR6Explode", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelidergr6explode", "perm.lidergr6explode", "perm.gr6explode", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugr6explode"},
	["Sub-Lider [GR6EXPLODE]"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "GR6Explode",orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelidergr6explode", "perm.lidergr6explode", "perm.gr6explode", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugr6explode"},	
	["Gerente [GR6EXPLODE]"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "GR6Explode",orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelidergr6explode", "perm.gr6explode", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugr6explode"},
	["Membro [GR6EXPLODE]"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "GR6Explode",orgType = "fLavagem"}, "perm.gr6explode", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.baugr6explode"},
	["Novato [GR6EXPLODE]"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "GR6Explode",orgType = "fLavagem"}, "perm.gr6explode", "perm.lavagem", "perm.ilegal"},
	["Recrutador [GR6EXPLODE]"] = { _config = { gtype = "org", salario = 30000, ptr = nil, orgName = "GR6Explode",orgType = "fLavagem"}, "perm.recrutador", "perm.baugr6explode", "perm.gr6explode", "perm.lavagem", "perm.ilegal"},

	--VANILLA--
	["Lider [VANILLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vanilla", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelidervanilla", "perm.lidervanilla", "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauvanilla"},
	["Sub-Lider [VANILLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelidervanilla", "perm.lidervanilla", "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauvanilla"},	
	["Gerente [VANILLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentelidervanilla", "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauvanilla"},
	["Membro [VANILLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.vanilla", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.bauvanilla"},
	["Novato [VANILLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.vanilla", "perm.lavagem", "perm.ilegal"},
	["Recrutador [VANILLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vanilla",orgType = "fLavagem"}, "perm.recrutador", "perm.bauvanilla", "perm.vanilla", "perm.lavagem", "perm.ilegal"},
	
	--TEQUILA--
	["Lider [TEQUILA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentetequila", "perm.tequila", "perm.lidertequila", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautequila"},
	["Sub-Lider [TEQUILA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentetequila", "perm.lidertequila", "perm.tequila", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautequila"},
	["Gerente [TEQUILA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentetequila", "perm.tequila", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautequila"},
	["Membro [TEQUILA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.tequila", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.bautequila"},
	["Novato [TEQUILA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.tequila", "perm.lavagem", "perm.ilegal"},
	["Recrutador [TEQUILA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Tequila", orgType = "fLavagem"}, "perm.recrutador", "perm.bautequila", "perm.tequila", "perm.lavagem", "perm.ilegal"},

	--GALAXY--
	--[[["Lider [GALAXY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentegalaxy", "perm.galaxy", "perm.lidergalaxy", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugalaxy"},
	["Sub-Lider [GALAXY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentegalaxy", "perm.lidergalaxy", "perm.galaxy", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugalaxy"},
	["Gerente [GALAXY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentegalaxy", "perm.galaxy", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugalaxy"},
	["Membro [GALAXY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.galaxy", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.baugalaxy"},
	["Novato [GALAXY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.galaxy", "perm.lavagem", "perm.ilegal"},
	["Recrutador [GALAXY]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Galaxy", orgType = "fLavagem"}, "perm.recrutador", "perm.baugalaxy", "perm.galaxy", "perm.lavagem", "perm.ilegal"},
-]]
	--TROPADO7--
	["Lider [TROPADO7]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TropaDo7", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentetropado7", "perm.tropado7", "perm.lidertropado7", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautropado7"},
	["Sub-Lider [TROPADO7]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TropaDo7", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentetropado7", "perm.lidertropado7", "perm.tropado7", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautropado7"},
	["Gerente [TROPADO7]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TropaDo7", orgType = "fLavagem"}, "perm.craftlavagem","perm.gerentetropado7", "perm.tropado7", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautropado7"},
	["Membro [TROPADO7]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TropaDo7", orgType = "fLavagem"}, "perm.tropado7", "perm.lavagem", "perm.ilegal", "perm.snovato", "perm.bautropado7"},
	["Novato [TROPADO7]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TropaDo7", orgType = "fLavagem"}, "perm.tropado7", "perm.lavagem", "perm.ilegal"},
	["Recrutador [TROPADO7]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "TropaDo7", orgType = "fLavagem"}, "perm.recrutador", "perm.bautropado7", "perm.tropado7", "perm.lavagem", "perm.ilegal"},

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DROGAS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	--CANADA--
	--[[["Lider [CANADA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.lidercanada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.baucanada"},
	["Sub-Lider [CANADA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.lidercanada", "perm.canada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.baucanada"},
	["Gerente [CANADA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.baucanada"},
	["Membro [CANADA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.baucanada"},
	["Novato [CANADA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.canada", "perm.drogas", "perm.maconha", "perm.ilegal"},
	["Recrutador [CANADA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Canada", orgType = "Drogas"}, "perm.recrutador", "perm.baucanada", "perm.canada", "perm.drogas", "perm.maconha", "perm.ilegal"},
--]]
	--[[["Lider [TROIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Troia", orgType = "Drogas"}, "perm.lidertroia", "perm.troia", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Sub-Lider [TROIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Troia", orgType = "Drogas"}, "perm.lidertroia", "perm.troia", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Gerente [TROIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Troia", orgType = "Drogas"}, "perm.troia", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautroia"},
	["Membro [TROIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Troia", orgType = "Drogas"}, "perm.troia", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.bautroia"},
	["Novato [TROIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Troia", orgType = "Drogas"}, "perm.troia", "perm.maconha", "perm.ilegal"},
	["Recrutador [TROIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Troia", orgType = "Drogas"}, "perm.recrutador", "perm.bautroia", "perm.troia", "perm.maconha", "perm.ilegal"},
--]]
	--GRECIA--
	["Lider [GRECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grecia", orgType = "Drogas"}, "perm.gerentelidergrecia","perm.lidergrecia", "perm.grecia", "perm.liderbaugrecia", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugrecia"},
	["Sub-Lider [GRECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grecia", orgType = "Drogas"}, "perm.gerentelidergrecia","perm.lidergrecia", "perm.grecia","perm.liderbaugrecia",  "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugrecia"},
	["Gerente [GRECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grecia", orgType = "Drogas"}, "perm.gerentelidergrecia","perm.grecia", "perm.heroina","perm.liderbaugrecia",  "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baugrecia"},
	["Membro [GRECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grecia", orgType = "Drogas"}, "perm.grecia", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.baugrecia"},
	["Novato [GRECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grecia", orgType = "Drogas"}, "perm.grecia", "perm.heroina", "perm.ilegal"},
	["Recrutador [GRECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Grecia", orgType = "Drogas"}, "perm.recrutador", "perm.baugrecia", "perm.grecia", "perm.heroina", "perm.ilegal"},


	--ELEMENTS--
	["Lider [ELEMENTS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Elements", orgType = "Drogas"}, "perm.gerenteelements", "perm.elements", "perm.metanfetamina", "perm.liderelements", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauelements"},
	["Sub-Lider [ELEMENTS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Elements", orgType = "Drogas"}, "perm.gerenteelements", "perm.liderelements", "perm.elements", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauelements"},
	["Gerente [ELEMENTS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Elements", orgType = "Drogas"}, "perm.gerenteelements", "perm.elements", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauelements"},
	["Membro [ELEMENTS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Elements", orgType = "Drogas"}, "perm.elements", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bauelements"},
	["Novato [ELEMENTS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Elements", orgType = "Drogas"}, "perm.elements", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [ELEMENTS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Elements", orgType = "Drogas"}, "perm.recrutador", "perm.bauelements", "perm.elements", "perm.metanfetamina", "perm.ilegal"},

	--[[["Lider [SERPENTES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Serpentes", orgType = "Drogas"}, "perm.gerenteserpentes", "perm.liderserpentes", "perm.serpentes", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauserpentes"},
	["Sub-Lider [SERPENTES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Serpentes", orgType = "Drogas"}, "perm.gerenteserpentes", "perm.liderserpentes", "perm.serpentes", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauserpentes"},
	["Gerente [SERPENTES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Serpentes", orgType = "Drogas"}, "perm.gerenteserpentes", "perm.serpentes", "perm.opio", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauserpentes"},
	["Membro [SERPENTES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Serpentes", orgType = "Drogas"}, "perm.serpentes", "perm.opio", "perm.ilegal", "perm.snovato", "perm.bauserpentes"},
	["Novato [SERPENTES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Serpentes", orgType = "Drogas"}, "perm.serpentes", "perm.opio", "perm.ilegal"},
	["Recrutador [SERPENTES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Serpentes", orgType = "Drogas"}, "perm.recrutador", "perm.bauserpentes", "perm.serpentes", "perm.opio", "perm.ilegal"},
	--]]

	["Lider [Medellin]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medellin", orgType = "Drogas"}, "perm.medellin", "perm.lidermedellin", "perm.haxixe", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.gerente", "perm.baumedellin", "perm.baulidermedellin"},
	["Sub-Lider [Medellin]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medellin", orgType = "Drogas"}, "perm.lidermedellin", "perm.medellin", "perm.haxixe", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumedellin", "perm.baulidermedellin"},
	["Gerente [Medellin]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medellin", orgType = "Drogas"}, "perm.medellin", "perm.haxixe", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baumedellin", "perm.baulidermedellin"},
	["Membro [Medellin]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medellin", orgType = "Drogas"}, "perm.medellin", "perm.haxixe", "perm.ilegal", "perm.snovato", "perm.baumedellin"},
	["Novato [Medellin]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medellin", orgType = "Drogas"}, "perm.medellin", "perm.haxixe", "perm.ilegal"},
	["Recrutador [Medellin]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Medellin", orgType = "Drogas"}, "perm.recrutador", "perm.medellin", "perm.haxixe", "perm.ilegal"},


	["Lider [BOLIVIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bolivia", orgType = "Drogas"}, "perm.bolivia", "perm.liderbolivia", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.gerente", "perm.baubolivia", "perm.bauliderbolivia"},
	["Sub-Lider [BOLIVIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bolivia", orgType = "Drogas"}, "perm.liderbolivia", "perm.bolivia", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubolivia", "perm.bauliderbolivia"},
	["Gerente [BOLIVIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bolivia", orgType = "Drogas"}, "perm.bolivia", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubolivia", "perm.bauliderbolivia"},
	["Membro [BOLIVIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bolivia", orgType = "Drogas"}, "perm.bolivia", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.baubolivia"},
	["Novato [BOLIVIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bolivia", orgType = "Drogas"}, "perm.bolivia", "perm.balinha", "perm.ilegal"},
	["Recrutador [BOLIVIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bolivia", orgType = "Drogas"}, "perm.recrutador", "perm.bolivia", "perm.balinha", "perm.ilegal"},
	

	--PALESTINA--
	--[[["Lider [PALESTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.liderpalestina", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.gerente", "perm.baupalestina", "perm.bauliderpalestina"},
	["Sub-Lider [PALESTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.liderpalestina", "perm.palestina", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baupalestina", "perm.bauliderpalestina"},
	["Gerente [PALESTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baupalestina", "perm.bauliderpalestina"},
	["Membro [PALESTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.baupalestina"},
	["Novato [PALESTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.palestina", "perm.heroina", "perm.ilegal"},
	["Recrutador [PALESTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Palestina", orgType = "Drogas"}, "perm.recrutador", "perm.palestina", "perm.heroina", "perm.ilegal"},
	--]]

	--[[["Lider [SUICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.gerentesuica", "perm.suica", "perm.lidersuica", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.gerente", "perm.bausuica", "perm.baulidersuica"},
	["Sub-Lider [SUICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.gerentesuica", "perm.lidersuica", "perm.suica", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bausuica", "perm.baulidersuica"},
	["Gerente [SUICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.gerentesuica", "perm.suica", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bausuica", "perm.baulidersuica"},
	["Membro [SUICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.suica", "perm.heroina", "perm.ilegal", "perm.snovato", "perm.bausuica"},
	["Novato [SUICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.suica", "perm.heroina", "perm.ilegal"},
	["Recrutador [SUICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.recrutador", "perm.suica", "perm.heroina", "perm.ilegal"},
	--]]

	--NIGERIA--
	--[[["Lider [NIGERIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.lidernigeria", "perm.maconha", "perm.ilegal", "perm.baunigeria", "perm.snovato", "perm.gerente", "perm.baulidernigeria"},
	["Sub-Lider [NIGERIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.lidernigeria", "perm.nigeria", "perm.maconha", "perm.ilegal",  "perm.baunigeria", "perm.snovato", "perm.gerente", "perm.baulidernigeria"},
	["Gerente [NIGERIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.maconha", "perm.ilegal", "perm.baunigeria", "perm.snovato", "perm.gerente", "perm.baulidernigeria"},
	["Membro [NIGERIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.baunigeria"},
	["Novato [NIGERIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.nigeria", "perm.maconha", "perm.ilegal"},
	["Recrutador [NIGERIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Nigeria", orgType = "Drogas"}, "perm.recrutador", "perm.baulidernigeria", "perm.nigeria", "perm.maconha", "perm.ilegal"},
--]]


	--[[["Lider [TALIBA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Taliba", orgType = "Drogas"}, "perm.lidertaliba", "perm.taliba", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautaliba"},
	["Sub-Lider [TALIBA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Taliba", orgType = "Drogas"}, "perm.lidertaliba", "perm.taliba", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautaliba"},
	["Gerente [TALIBA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Taliba", orgType = "Drogas"}, "perm.taliba", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bautaliba"},
	["Membro [TALIBA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Taliba", orgType = "Drogas"}, "perm.taliba", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bautaliba"},
	["Novato [TALIBA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Taliba", orgType = "Drogas"}, "perm.taliba", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [TALIBA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Taliba", orgType = "Drogas"}, "perm.recrutador", "perm.bautaliba", "perm.taliba", "perm.metanfetamina", "perm.ilegal"},
--]]
	--[[["Lider [AFEGANISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Afeganistao", orgType = "Drogas"}, "perm.afeganistao", "perm.liderafeganistao", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauafeganistao"},
	["Sub-Lider [AFEGANISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Afeganistao", orgType = "Drogas"}, "perm.liderafeganistao", "perm.afeganistao", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauafeganistao"},
	["Gerente [AFEGANISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Afeganistao", orgType = "Drogas"}, "perm.afeganistao", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauafeganistao"},
	["Membro [AFEGANISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Afeganistao", orgType = "Drogas"}, "perm.afeganistao", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bauafeganistao"},
	["Novato [AFEGANISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Afeganistao", orgType = "Drogas"}, "perm.afeganistao", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [AFEGANISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Afeganistao", orgType = "Drogas"}, "perm.recrutador", "perm.bauafeganistao", "perm.afeganistao", "perm.metanfetamina", "perm.ilegal"},
	--]]

	--[[["Lider [UCRANIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Ucrania", orgType = "Drogas"}, "perm.ucrania", "perm.liderucrania", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauucrania"},
	["Sub-Lider [UCRANIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Ucrania", orgType = "Drogas"}, "perm.liderucrania", "perm.ucrania", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauucrania"},
	["Gerente [UCRANIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Ucrania", orgType = "Drogas"}, "perm.ucrania", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauucrania"},
	["Membro [UCRANIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Ucrania", orgType = "Drogas"}, "perm.ucrania", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bauucrania"},
	["Novato [UCRANIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Ucrania", orgType = "Drogas"}, "perm.ucrania", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [UCRANIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Ucrania", orgType = "Drogas"}, "perm.recrutador", "perm.bauucrania", "perm.ucrania", "perm.metanfetamina", "perm.ilegal"},
--]]
	--SUECIA--
	["Lider [SUECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.lidersuecia", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.bausuecia", "perm.snovato", "perm.gerente", "perm.baulidersuecia" },
	["Sub-Lider [SUECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.lidersuecia", "perm.suecia", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.bausuecia", "perm.snovato", "perm.gerente", "perm.baulidersuecia" },
	["Gerente [SUECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.lidersuecia", "perm.suecia", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.bausuecia", "perm.snovato", "perm.gerente", "perm.baulidersuecia" },
	["Membro [SUECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bausuecia"},
	["Novato [SUECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.suecia", "perm.drogas", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [SUECIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Suecia", orgType = "Drogas"}, "perm.recrutador", "perm.bausuecia", "perm.suecia", "perm.drogas", "perm.metanfetamina", "perm.ilegal"},

	-- PAQUISTAO
	--[[["Lider [PAQUISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.liderpaquistao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.baupaquistao", "perm.snovato", "perm.gerente", "perm.bauliderpaquistao" },
	["Sub-Lider [PAQUISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.liderpaquistao", "perm.paquistao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.baupaquistao", "perm.snovato", "perm.gerente", "perm.bauliderpaquistao" },
	["Gerente [PAQUISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.liderpaquistao", "perm.paquistao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.baupaquistao", "perm.snovato", "perm.gerente", "perm.bauliderpaquistao" },
	["Membro [PAQUISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.snovato", "perm.baupaquistao"},
	["Novato [PAQUISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.paquistao", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	["Recrutador [PAQUISTAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paquistao", orgType = "Drogas"}, "perm.recrutador", "perm.baupaquistao", "perm.paquistao", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
--]]
	["Lider [BRAZUCA]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Brazuca", orgType = "Drogas"}, "perm.gerentebrazuca", "perm.brazuca", "perm.liderbrazuca", "perm.drogas", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubrazuca"},
	["Sub-Lider [BRAZUCA]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Brazuca", orgType = "Drogas"}, "perm.gerentebrazuca", "perm.liderbrazuca", "perm.brazuca", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baubrazuca"},
	["Gerente [BRAZUCA]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Brazuca", orgType = "Drogas"}, "perm.gerentebrazuca", "perm.brazuca", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baubrazuca"},
	["Membro [BRAZUCA]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Brazuca", orgType = "Drogas"}, "perm.brazuca", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.baubrazuca"},
	["Novato [BRAZUCA]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Brazuca", orgType = "Drogas"}, "perm.brazuca", "perm.drogas", "perm.cocaina", "perm.ilegal"},
	["Recrutador [BRAZUCA]"] = { _config = { gtype = "org", salario = 17000, ptr = nil, orgName = "Brazuca", orgType = "Drogas"}, "perm.recrutador", "perm.baubrazuca", "perm.brazuca", "perm.drogas", "perm.cocaina", "perm.ilegal"},

	["Lider [ITALIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Italia", orgType = "Drogas"}, "perm.gerenteitalia", "perm.italia", "perm.lideritalia", "perm.drogas", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauitalia"},
	["Sub-Lider [ITALIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Italia", orgType = "Drogas"}, "perm.gerenteitalia", "perm.lideritalia", "perm.italia", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.bauitalia"},
	["Gerente [ITALIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Italia", orgType = "Drogas"}, "perm.gerenteitalia", "perm.italia", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.bauitalia"},
	["Membro [ITALIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Italia", orgType = "Drogas"}, "perm.italia", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.bauitalia"},
	["Novato [ITALIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Italia", orgType = "Drogas"}, "perm.italia", "perm.drogas", "perm.cocaina", "perm.ilegal"},
	["Recrutador [ITALIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Italia", orgType = "Drogas"}, "perm.recrutador", "perm.bauitalia", "perm.italia", "perm.drogas", "perm.cocaina", "perm.ilegal"},

	--BLOODS--
	["Lider [BLOODS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bloods", orgType = "Drogas"}, "perm.bloods", "perm.liderbloods", "perm.drogas", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubloods"},
	["Sub-Lider [BLOODS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bloods", orgType = "Drogas"}, "perm.liderbloods", "perm.bloods", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baubloods"},
	["Gerente [BLOODS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bloods", orgType = "Drogas"}, "perm.bloods", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baubloods"},
	["Membro [BLOODS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bloods", orgType = "Drogas"}, "perm.bloods", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.baubloods"},
	["Novato [BLOODS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bloods", orgType = "Drogas"}, "perm.bloods", "perm.drogas", "perm.cocaina", "perm.ilegal"},
	["Recrutador [BLOODS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bloods", orgType = "Drogas"}, "perm.recrutador", "perm.baubloods", "perm.bloods", "perm.drogas", "perm.cocaina", "perm.ilegal"},
	

	--IRLANDA--
	["Lider [IRLANDA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Irlanda", orgType = "Drogas"}, "perm.membrosirlanda", "perm.gerenteirlanda", "perm.irlanda", "perm.liderirlanda", "perm.drogas", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauirlanda"},
	["Sub-Lider [IRLANDA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Irlanda", orgType = "Drogas"}, "perm.membrosirlanda", "perm.gerenteirlanda", "perm.liderirlanda", "perm.irlanda", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.snovato", "perm.gerente", "perm.bauirlanda"},
	["Gerente [IRLANDA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Irlanda", orgType = "Drogas"}, "perm.membrosirlanda", "perm.gerenteirlanda", "perm.irlanda", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.snovato", "perm.gerente", "perm.bauirlanda"},
	["Membro [IRLANDA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Irlanda", orgType = "Drogas"}, "perm.membrosirlanda", "perm.irlanda", "perm.drogas", "perm.ilegal", "perm.metanfetamina", "perm.snovato", "perm.bauirlanda"},
	["Novato [IRLANDA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Irlanda", orgType = "Drogas"}, "perm.irlanda", "perm.drogas", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [IRLANDA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Irlanda", orgType = "Drogas"}, "perm.recrutador", "perm.bauirlanda", "perm.irlanda", "perm.drogas", "perm.metanfetamina", "perm.ilegal"},

	--CRIPS--
	["Lider [CRIPS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Crips", orgType = "Drogas"}, "perm.crips", "perm.lidercrips", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baucrips"},
	["Sub-Lider [CRIPS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Crips", orgType = "Drogas"}, "perm.lidercrips", "perm.crips", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.baucrips"},
	["Gerente [CRIPS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Crips", orgType = "Drogas"}, "perm.crips", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.baucrips"},
	["Membro [CRIPS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Crips", orgType = "Drogas"}, "perm.crips", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.baucrips"},
	["Novato [CRIPS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Crips", orgType = "Drogas"}, "perm.crips", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	["Recrutador [CRIPS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Crips", orgType = "Drogas"}, "perm.recrutador", "perm.baucrips", "perm.crips", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	
	--BENNYS--
	["Lider [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys", orgType = "Drogas"}, "perm.bennys", "perm.liderbennys", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubennys"},
	["Sub-Lider [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys", orgType = "Drogas"}, "perm.liderbennys", "perm.bennys", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.baubennys"},
	["Gerente [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys", orgType = "Drogas"}, "perm.bennys", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.baubennys"},
	["Membro [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys", orgType = "Drogas"}, "perm.bennys", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.baubennys"},
	["Novato [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys", orgType = "Drogas"}, "perm.bennys", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	["Recrutador [BENNYS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Bennys", orgType = "Drogas"}, "perm.recrutador", "perm.baubennys", "perm.bennys", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},

	--BELGICA--
	["Lider [BELGICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.gerentebelgica", "perm.belgica", "perm.liderbelgica", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.baubelgica"},
	["Sub-Lider [BELGICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.gerentebelgica", "perm.liderbelgica", "perm.belgica", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.baubelgica"},
	["Gerente [BELGICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.gerentebelgica","perm.belgica", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.baubelgica"},
	["Membro [BELGICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.belgica", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.baubelgica"},
	["Novato [BELGICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.belgica", "perm.drogas", "perm.maconha", "perm.ilegal"},
	["Recrutador [BELGICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Belgica", orgType = "Drogas"}, "perm.suicaebelgica", "perm.recrutador", "perm.baubelgica", "perm.belgica", "perm.drogas", "perm.maconha", "perm.ilegal"},

	--ISRAEL--
	["Lider [ISRAEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.gerenteliderisrael", "perm.israel", "perm.liderisrael", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauisrael", "perm.liderbauisrael" },
	["Sub-Lider [ISRAEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.gerenteliderisrael", "perm.liderisrael", "perm.israel", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauisrael", "perm.liderbauisrael" },
	["Gerente [ISRAEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.gerenteliderisrael", "perm.israel", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauisrael", "perm.liderbauisrael" },
	["Membro [ISRAEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.israel", "perm.metanfetamina", "perm.ilegal", "perm.snovato", "perm.bauisrael"},
	["Novato [ISRAEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.israel", "perm.metanfetamina", "perm.ilegal"},
	["Recrutador [ISRAEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Israel", orgType = "Drogas"}, "perm.recrutador", "perm.bauisrael", "perm.israel", "perm.metanfetamina", "perm.ilegal"},

	--COLOMBIA--
	["Lider [COLOMBIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.gerentelidercolombia", "perm.colombia", "perm.lidercolombia", "perm.drogas", "perm.opio", "perm.ilegal", "perm.baucolombia", "perm.snovato", "perm.gerente", "perm.baulidercolombia"},
	["Sub-Lider [COLOMBIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.gerentelidercolombia", "perm.lidercolombia", "perm.colombia", "perm.drogas", "perm.ilegal", "perm.opio", "perm.baucolombia", "perm.snovato", "perm.gerente", "perm.baulidercolombia"},
	["Gerente [COLOMBIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.gerentelidercolombia", "perm.colombia", "perm.drogas", "perm.ilegal", "perm.opio", "perm.snovato", "perm.gerente", "perm.baucolombia", "perm.baulidercolombia"},
	["Membro [COLOMBIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.colombia", "perm.drogas", "perm.ilegal", "perm.opio", "perm.snovato", "perm.baucolombia"},
	["Novato [COLOMBIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.colombia", "perm.drogas", "perm.opio", "perm.ilegal"}, 
	["Recrutador [COLOMBIA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Colombia", orgType = "Drogas"}, "perm.recrutador", "perm.baucolombia", "perm.colombia", "perm.drogas", "perm.opio", "perm.ilegal"}, 
		
	--COSTARICA-- 
	["Lider [COSTARICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.gerentecostarica", "perm.costarica", "perm.lidercostarica", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baucostarica", "perm.snovato", "perm.gerente", "perm.baulidercostarica"},
	["Sub-Lider [COSTARICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.gerentecostarica", "perm.lidercostarica", "perm.costarica", "perm.drogas", "perm.ilegal", "perm.balinha", "perm.baucostarica", "perm.snovato", "perm.gerente", "perm.baulidercostarica"},
	["Gerente [COSTARICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.gerentecostarica", "perm.costarica", "perm.drogas", "perm.ilegal", "perm.balinha", "perm.snovato", "perm.gerente", "perm.baucostarica", "perm.baulidercostarica"},
	["Membro [COSTARICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.costarica", "perm.drogas", "perm.ilegal", "perm.balinha", "perm.snovato", "perm.baucostarica"},
	["Novato [COSTARICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.costarica", "perm.drogas", "perm.balinha", "perm.ilegal"},
	["Recrutador [COSTARICA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "CostaRica", orgType = "Drogas"}, "perm.recrutador", "perm.baucostarica", "perm.costarica", "perm.drogas", "perm.balinha", "perm.ilegal"},
	
	--[[["Lider [UMBRELLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Umbrella", orgType = "Drogas"}, "perm.liderumbrella", "perm.umbrella", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauumbrella"},
	["Sub-Lider [UMBRELLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Umbrella", orgType = "Drogas"}, "perm.liderumbrella", "perm.umbrella", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauumbrella"},
	["Gerente [UMBRELLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Umbrella", orgType = "Drogas"}, "perm.umbrella", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.gerente", "perm.bauumbrella"},
	["Membro [UMBRELLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Umbrella", orgType = "Drogas"}, "perm.umbrella", "perm.cocaina", "perm.ilegal", "perm.snovato", "perm.bauumbrella"},
	["Novato [UMBRELLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Umbrella", orgType = "Drogas"}, "perm.umbrella", "perm.cocaina", "perm.ilegal"},
	["Recrutador [UMBRELLA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Umbrella", orgType = "Drogas"}, "perm.recrutador", "perm.bauumbrella", "perm.umbrella", "perm.cocaina", "perm.ilegal"},
	--]]

	-- 
	["Lider [VILADOCHAVES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "VilaDoChaves", orgType = "Drogas"}, "perm.viladochaves", "perm.liderviladochaves", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bauviladochaves", "perm.snovato", "perm.gerente", "perm.bauliderviladochaves" },
	["Sub-Lider [VILADOCHAVES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "VilaDoChaves", orgType = "Drogas"}, "perm.liderviladochaves", "perm.viladochaves", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bauviladochaves", "perm.snovato", "perm.gerente", "perm.bauliderviladochaves" },
	["Gerente [VILADOCHAVES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "VilaDoChaves", orgType = "Drogas"}, "perm.liderviladochaves", "perm.viladochaves", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.bauviladochaves", "perm.snovato", "perm.gerente", "perm.bauliderviladochaves" },
	["Membro [VILADOCHAVES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "VilaDoChaves", orgType = "Drogas"}, "perm.viladochaves", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.bauviladochaves"},
	["Novato [VILADOCHAVES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "VilaDoChaves", orgType = "Drogas"}, "perm.viladochaves", "perm.drogas", "perm.balinha", "perm.ilegal"},
	["Recrutador [VILADOCHAVES]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "VilaDoChaves", orgType = "Drogas"}, "perm.recrutador", "perm.bauviladochaves", "perm.viladochaves", "perm.drogas", "perm.balinha", "perm.ilegal"},

	--[[["Lider [LIXAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lixao", orgType = "Drogas"}, "perm.lixao", "perm.liderlixao", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.baulixao", "perm.snovato", "perm.gerente", "perm.bauliderlixao" },
	["Sub-Lider [LIXAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lixao", orgType = "Drogas"}, "perm.liderlixao", "perm.lixao", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.baulixao", "perm.snovato", "perm.gerente", "perm.bauliderlixao" },
	["Gerente [LIXAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lixao", orgType = "Drogas"}, "perm.liderlixao", "perm.lixao", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.baulixao", "perm.snovato", "perm.gerente", "perm.bauliderlixao" },
	["Membro [LIXAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lixao", orgType = "Drogas"}, "perm.lixao", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.baulixao"},
	["Novato [LIXAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lixao", orgType = "Drogas"}, "perm.lixao", "perm.drogas", "perm.maconha", "perm.ilegal"},
	["Recrutador [LIXAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Lixao", orgType = "Drogas"}, "perm.recrutador", "perm.baulixao", "perm.lixao", "perm.drogas", "perm.maconha", "perm.ilegal"},
--]]
	--NORUEGA--
--[[	["Lider [NORUEGA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Noruega", orgType = "Drogas"}, "perm.noruega", "perm.lidernoruega", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baunoruega", "perm.snovato", "perm.gerente", "perm.baulidernoruega" },
	["Sub-Lider [NORUEGA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Noruega", orgType = "Drogas"}, "perm.lidernoruega", "perm.noruega", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baunoruega", "perm.snovato", "perm.gerente", "perm.baulidernoruega" },
	["Gerente [NORUEGA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Noruega", orgType = "Drogas"}, "perm.lidernoruega", "perm.noruega", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baunoruega", "perm.snovato", "perm.gerente", "perm.baulidernoruega" },
	["Membro [NORUEGA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Noruega", orgType = "Drogas"}, "perm.noruega", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.baunoruega"},
	["Novato [NORUEGA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Noruega", orgType = "Drogas"}, "perm.noruega", "perm.drogas", "perm.balinha", "perm.ilegal"},
	["Recrutador [NORUEGA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Noruega", orgType = "Drogas"}, "perm.recrutador", "perm.baunoruega", "perm.noruega", "perm.drogas", "perm.balinha", "perm.ilegal"},
--]]
	--[[["Lider [B13]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "B13", orgType = "Drogas"}, "perm.b13", "perm.liderb13", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baub13", "perm.snovato", "perm.gerente", "perm.bauliderb13" },
	["Sub-Lider [B13]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "B13", orgType = "Drogas"}, "perm.liderb13", "perm.b13", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baub13", "perm.snovato", "perm.gerente", "perm.bauliderb13" },
	["Gerente [B13]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "B13", orgType = "Drogas"}, "perm.liderb13", "perm.b13", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.baub13", "perm.snovato", "perm.gerente", "perm.bauliderb13" },
	["Membro [B13]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "B13", orgType = "Drogas"}, "perm.b13", "perm.drogas", "perm.balinha", "perm.ilegal", "perm.snovato", "perm.baub13"},
	["Novato [B13]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "B13", orgType = "Drogas"}, "perm.b13", "perm.drogas", "perm.balinha", "perm.ilegal"},
	["Recrutador [B13]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "B13", orgType = "Drogas"}, "perm.recrutador", "perm.baub13", "perm.b13", "perm.drogas", "perm.balinha", "perm.ilegal"},
--]]

	["Lider [ARGENTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Argentina", orgType = "Drogas"}, "perm.gerenteliderargentina", "perm.areb", "perm.argentina", "perm.liderargentina", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.bauargentina", "perm.snovato", "perm.gerente", "perm.bauliderargentina" },
	["Sub-Lider [ARGENTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Argentina", orgType = "Drogas"}, "perm.gerenteliderargentina","perm.areb","perm.liderargentina", "perm.argentina", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.bauargentina", "perm.snovato", "perm.gerente", "perm.bauliderargentina" },
	["Gerente [ARGENTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Argentina", orgType = "Drogas"},  "perm.gerenteliderargentina","perm.areb","perm.argentina", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.bauargentina", "perm.snovato", "perm.gerente", "perm.bauliderargentina" },
	["Membro [ARGENTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Argentina", orgType = "Drogas"}, "perm.areb","perm.argentina", "perm.drogas", "perm.maconha", "perm.ilegal", "perm.snovato", "perm.bauargentina"},
	["Novato [ARGENTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Argentina", orgType = "Drogas"}, "perm.areb","perm.argentina", "perm.drogas", "perm.maconha", "perm.ilegal"},
	["Recrutador [ARGENTINA]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Argentina", orgType = "Drogas"}, "perm.areb","perm.recrutador", "perm.bauargentina", "perm.argentina", "perm.drogas", "perm.maconha", "perm.ilegal"},

	--[[["Lider [JAPAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Japao", orgType = "Drogas"}, "perm.gerentejapao", "perm.japao", "perm.liderjapao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.baujapao", "perm.snovato", "perm.gerente", "perm.bauliderjapao" },
	["Sub-Lider [JAPAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Japao", orgType = "Drogas"}, "perm.gerentejapao", "perm.liderjapao", "perm.japao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.baujapao", "perm.snovato", "perm.gerente", "perm.bauliderjapao" },
	["Gerente [JAPAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Japao", orgType = "Drogas"}, "perm.gerentejapao", "perm.liderjapao", "perm.japao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.baujapao", "perm.snovato", "perm.gerente", "perm.bauliderjapao" },
	["Membro [JAPAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Japao", orgType = "Drogas"}, "perm.japao", "perm.drogas", "perm.lancaperfume", "perm.ilegal", "perm.snovato", "perm.baujapao"},
	["Novato [JAPAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Japao", orgType = "Drogas"}, "perm.japao", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	["Recrutador [JAPAO]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Japao", orgType = "Drogas"}, "perm.recrutador", "perm.baujapao", "perm.japao", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},

	--]]

--[[	["Lider [PARAISOPOLIS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paraisopolis", orgType = "Drogas"}, "perm.gerenteliderparaisopolis", "perm.paraisopolis", "perm.liderparaisopolis", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.snovato", "perm.gerente", "perm.bauparaisopolis"},
	["Sub-Lider [PARAISOPOLIS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paraisopolis", orgType = "Drogas"}, "perm.gerenteliderparaisopolis", "perm.liderparaisopolis", "perm.paraisopolis", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.snovato", "perm.gerente", "perm.bauparaisopolis"},
	["Gerente [PARAISOPOLIS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paraisopolis", orgType = "Drogas"}, "perm.gerenteliderparaisopolis", "perm.paraisopolis", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.snovato", "perm.gerente", "perm.bauparaisopolis"},
	["Membro [PARAISOPOLIS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paraisopolis", orgType = "Drogas"}, "perm.paraisopolis", "perm.drogas", "perm.ilegal", "perm.heroina", "perm.snovato", "perm.bauparaisopolis"},
	["Novato [PARAISOPOLIS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paraisopolis", orgType = "Drogas"}, "perm.paraisopolis", "perm.drogas", "perm.heroina", "perm.ilegal"},
	["Recrutador [PARAISOPOLIS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Paraisopolis", orgType = "Drogas"}, "perm.recrutador", "perm.bauparaisopolis", "perm.paraisopolis", "perm.drogas", "perm.heroina", "perm.ilegal"},
--]]
	["Lider [VAGOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.gerentevagos", "perm.vagos", "perm.lidervagosR", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.bauvagos"},
	["Sub-Lider [VAGOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.gerentevagos","perm.lidervagos", "perm.vagos", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.bauvagos"},
	["Gerente [VAGOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.gerentevagos","perm.vagos", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.gerente", "perm.bauvagos"},
	["Membro [VAGOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.vagos", "perm.drogas", "perm.ilegal", "perm.lancaperfume", "perm.snovato", "perm.bauvagos"},
	["Novato [VAGOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.vagos", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	["Recrutador [VAGOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vagos", orgType = "Drogas"}, "perm.recrutador", "perm.bauvagos", "perm.vagos", "perm.drogas", "perm.lancaperfume", "perm.ilegal"},
	
--[[["Lider [VERMELHOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vermelhos", orgType = "Drogas"}, "perm.gerentelidervermelhos", "perm.vermelhos", "perm.lidervermelhos", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.bauvermelhos"},
	["Sub-Lider [VERMELHOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vermelhos", orgType = "Drogas"}, "perm.gerentelidervermelhos", "perm.lidervermelhos", "perm.vermelhos", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.bauvermelhos"},
	["Gerente [VERMELHOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vermelhos", orgType = "Drogas"}, "perm.gerentelidervermelhos", "perm.vermelhos", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.gerente", "perm.bauvermelhos"},
	["Membro [VERMELHOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vermelhos", orgType = "Drogas"}, "perm.vermelhos", "perm.drogas", "perm.ilegal", "perm.maconha", "perm.snovato", "perm.bauvermelhos"},
	["Novato [VERMELHOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vermelhos", orgType = "Drogas"}, "perm.vermelhos", "perm.drogas", "perm.maconha", "perm.ilegal"},
	["Recrutador [VERMELHOS]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Vermelhos", orgType = "Drogas"}, "perm.recrutador", "perm.bauvermelhos", "perm.vermelhos", "perm.drogas", "perm.maconha", "perm.ilegal"},
--]]
	["Lider [CARTEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Cartel", orgType = "Drogas"}, "perm.gerentecartel", "perm.cartel", "perm.lidercartel", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baucartel"},
	["Sub-Lider [CARTEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Cartel", orgType = "Drogas"}, "perm.gerentecartel","perm.lidercartel", "perm.cartel", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baucartel"},
	["Gerente [CARTEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Cartel", orgType = "Drogas"}, "perm.gerentecartel","perm.cartel", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.gerente", "perm.baucartel"},
	["Membro [CARTEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Cartel", orgType = "Drogas"}, "perm.cartel", "perm.drogas", "perm.ilegal", "perm.cocaina", "perm.snovato", "perm.baucartel"},
	["Novato [CARTEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Cartel", orgType = "Drogas"}, "perm.cartel", "perm.drogas", "perm.cocaina", "perm.ilegal"},
	["Recrutador [CARTEL]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Cartel", orgType = "Drogas"}, "perm.recrutador", "perm.baucartel", "perm.cartel", "perm.drogas", "perm.cocaina", "perm.ilegal"},


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Bennys
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["Lider [Mecanica]"] = { _config = { gtype = "org", salario = 3500, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "perm.gerentecustoms", "dv.permissao", "perm.customs", "perm.lidercustoms", "perm.tunar", "perm.snovato", "perm.gerente", "perm.baucustoms"},
	["Sub-Lider [Mecanica]"] = { _config = { gtype = "org", salario = 3000, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "perm.gerentecustoms", "perm.customs", "perm.tunar", "perm.lidercustoms", "perm.snovato", "perm.gerente", "perm.baucustoms"},
	["Gerente [Mecanica]"] = { _config = { gtype = "org", salario = 2500, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "perm.gerentecustoms", "perm.customs", "perm.tunar", "perm.snovato", "perm.gerente", "perm.baucustoms"},
	["Membro [Mecanica]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.customs", "perm.tunar", "perm.snovato", "perm.baucustoms"},
	["Novato [Mecanica]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.customs", "perm.tunar"},
	["Recrutador [Mecanica]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Mecanica" }, "perm.mecanica", "perm.recrutador", "perm.customs", "perm.tunar", "perm.baucustoms"},

	["Lider [DK]"] = { _config = { gtype = "org", salario = 3500, ptr = nil, orgName = "Dk" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "dv.permissao", "perm.dk", "perm.liderdk", "perm.tunar", "perm.snovato", "perm.gerente", "perm.baumecanica"},
    ["Sub-Lider [DK]"] = { _config = { gtype = "org", salario = 3000, ptr = nil, orgName = "Dk" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "perm.dk", "perm.tunar", "perm.liderdk", "perm.snovato", "perm.gerente", "perm.baumecanica"},
	["Gerente [DK]"] = { _config = { gtype = "org", salario = 2500, ptr = nil, orgName = "Dk" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "perm.dk", "perm.tunar", "perm.snovato", "perm.gerente", "perm.baumecanica"},
	["Membro [DK]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Dk" }, "perm.mecanica", "perm.dk", "perm.tunar", "perm.snovato", "perm.baumecanica"},
	["Novato [DK]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Dk" }, "perm.mecanica", "perm.dk", "perm.tunar"},
	["Recrutador [DK]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Dk" }, "perm.mecanica", "perm.recrutador", "perm.dk", "perm.tunar"},

	["Lider [RACE]"] = { _config = { gtype = "org", salario = 3500, ptr = nil, orgName = "Race" }, "perm.mecanica", "dv.permissao", "perm.avisomc", "perm.race", "dv.permissao", "perm.race", "perm.liderrace", "perm.lidermecanica", "perm.tunar", "perm.snovato", "perm.gerente", "perm.baurace"},
    ["Sub-Lider [RACE]"] = { _config = { gtype = "org", salario = 3000, ptr = nil, orgName = "Race" }, "perm.mecanica","dv.permissao", "perm.avisomc", "perm.race", "perm.race", "perm.tunar", "perm.liderrace", "perm.lidermecanica", "perm.snovato", "perm.gerente", "perm.baurace"},
	["Gerente [RACE]"] = { _config = { gtype = "org", salario = 2500, ptr = nil, orgName = "Race" }, "perm.mecanica","dv.permissao", "perm.avisomc", "perm.race", "perm.race", "perm.tunar", "perm.snovato", "perm.gerente", "perm.baurace"},
	["Membro [RACE]"] = { _config = { gtype = "org", salario = 2000, ptr = nil, orgName = "Race" }, "perm.mecanica","perm.race", "perm.tunar", "perm.snovato", "perm.baurace"},
	["Novato [RACE]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Race" }, "perm.mecanica","perm.race", "perm.tunar"},
	["Recrutador [RACE]"] = { _config = { gtype = "org", salario = 1500, ptr = nil, orgName = "Race" }, "perm.mecanica","perm.recrutador", "perm.race", "perm.tunar", "perm.baurace"},
	
	["Lider [MAISONETTE]"] = { _config = { gtype = "org", salario = 12000, ptr = nil, orgName = "Maisonette"}, "perm.ilegal", "perm.gerentelidermaisonette", "perm.lidermaisonette", "perm.maisonette", "perm.snovato", "perm.gerente", "perm.baumaisonette"},
	["Sub-Lider [MAISONETTE]"] = { _config = { gtype = "org", salario = 12000, ptr = nil, orgName = "Maisonette"}, "perm.ilegal", "perm.gerentelidermaisonette", "perm.maisonette", "perm.snovato", "perm.gerente", "perm.baumaisonette"},	
	["Gerente [MAISONETTE]"] = { _config = { gtype = "org", salario = 12000, ptr = nil, orgName = "Maisonette"}, "perm.ilegal", "perm.gerentelidermaisonette", "perm.maisonette", "perm.snovato", "perm.gerente", "perm.baumaisonette"},
	["Membro [MAISONETTE]"] = { _config = { gtype = "org", salario = 12000, ptr = nil, orgName = "Maisonette"}, "perm.ilegal", "perm.maisonette", "perm.snovato", "perm.baumaisonette"},
	["Novato [MAISONETTE]"] = { _config = { gtype = "org", salario = 12000, ptr = nil, orgName = "Maisonette"}, "perm.ilegal", "perm.maisonette" },
	["Recrutador [MAISONETTE]"] = { _config = { gtype = "org", salario = 12000, ptr = nil, orgName = "Maisonette"}, "perm.ilegal", "perm.recrutador", "perm.baumaisonette", "perm.maisonette" },


}

cfg.users = {
	[1] = { "developerlotusgroup@445" },
}

cfg.selectors = { }

return cfg
