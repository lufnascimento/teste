PRA ATIVAR AS NUIS, A HORA QUE O CARA ENTRAR NA DOMINAÇÃO VOCÊ VAI MANDAR UM

SendNUIMessage({action = "setVisible", data = true}) 

E A HORA QUE ELE SAIR VOCÊ MANDA UM FALSE PRA DESATIVAR, POR CONTA DAS NOTIFY, SE NÃO FICA RODANDO MESMO ELE NÃO ESTANDO

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PRA MOSTRAR AS NOTIFY VOCÊ VAI MANDAR 

SendNUIMessage({action = "notify", data = "MENSAGEM AQUI" })

COLOQUEI ELA 7 SEGUNDOS, ELA SOME SOZINHA, VERIFICA SE TA CERTO E ME AVISA

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PRA MOSTRAR A KILLFY VOCÊ VAI MANDAR

SendNUIMessage({action = "killfy", data = {
    kill: "NOME DO CARA QUE MATOU",
    death: "NOME DO CARA QUE MORREU",
    weapon: "NOME DA ARMA QUE MATOU"
}})

ELA SOME SOZINHA TAMBÉM, CONFIGUREI PRA FICAR 5 SEGUNDOS, VERIFICA E ME AVISA

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

E O PROGRESSO PRA ATUALIZAR VOCÊ MANDA

SendNUIMessage({action = "progress", data = 25 }) 

VAI DE 0 A 100

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PRA MOSTRAR O PAINEL, VOCÊ FAZ VAI MANDAR

SendNUIMessage({action = "openPanel", data = {
    list: [
        { points: 200, name: "tropa", kills: 20, position: 1, deaths: 2, time: 2 }
    ],
}})

É SOMENTE 30, JÁ VERIFICA AI SE NÃO PASSA, E TAMBÉM FAZ O SEGUINTE, PEGA AS FACÇÃO DELE E COLOCA SEMPRE EM ÚLTIMO PRA RENDERIZAR, PRA POR EXEMPLO SE TIVER 29, E ELES FOREM A POSIÇÃO 41,
APARECER EM 30, SACOU ? ABAIXO DE 30 NÃO TEM PROBLEMA, AI SE TIVER 22, ELES TIVER EM 60, MOSTRA ELES NO 23, QUALQUER COISA ME CHAMA

NÃO PRECISA MAIS MANDAR O GROUP, INSERE ELE VOCÊ AE QUE É MAIS FÁCIL.

QUALQUER COISA ME AVISA :)
