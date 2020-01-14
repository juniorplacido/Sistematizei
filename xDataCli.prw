#Include 'Protheus.ch'

User Function xDataCli()
Private aDataCli := {} 

aAdd(aDataCli,{xFilial("SA1"),"999991","01","F","F","JONATHAN DO SQL","JONATHAN",;
"RUA DAS QUERIES","SP","SAO PAULO","50308","BAIRRO ADVPL","51242349030"})

aAdd(aDataCli,{xFilial("SA1"),"999992","01","F","F","NATHALIA LEADER GPE","NATHALIA",;
"RUA DO ESOCIAL","SP","SAO PAULO","50308","BAIRRO ADVPL","51242349030"})

aAdd(aDataCli,{xFilial("SA1"),"999993","01","F","F","ELDER DO DBACCESS","ELDER",;
"RUA DOS JOINS","SP","SAO PAULO","50308","BAIRRO ADVPL","51242349030"})

MsgInfo("Você está enviando -->"+cValtoChar(Len(aDataCli))+" clientes!")

u_xRecbCli(aDataCli)

Return

