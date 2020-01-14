#Include 'Protheus.ch'

User Function xRecbCli(aDados)
	Local i := 0
	Private xAutoCab 	:= {}
	//Private lMsHelpAuto := .T.
	//Private lAutoErrNoFile := .T.
	Private lMsErroAuto := .F.

	If Len(aDados) > 0 
		MsgInfo("Arquivo recebido com sucesso!"+CRLF+cValtoChar(Len(aDados))+;
		" clientes serão importados!","SUCESSO!")
	Endif

	For i := 1 to Len(aDados)
		//Monta Array para Execução.
		xAutoCab := {}
		Aadd(xAutoCab,{"A1_FILIAL" 	,aDados[i,1]})
		Aadd(xAutoCab,{"A1_COD"	 	,aDados[i,2]})
		Aadd(xAutoCab,{"A1_LOJA"	,aDados[i,3]})
		Aadd(xAutoCab,{"A1_PESSOA" 	,aDados[i,4]})
		Aadd(xAutoCab,{"A1_TIPO" 	,aDados[i,5]})
		Aadd(xAutoCab,{"A1_NOME"	,aDados[i,6]})
		Aadd(xAutoCab,{"A1_NREDUZ" 	,aDados[i,7]})
		Aadd(xAutoCab,{"A1_END"	 	,aDados[i,8]})
		Aadd(xAutoCab,{"A1_EST"	 	,aDados[i,9]})
		Aadd(xAutoCab,{"A1_MUN"		,aDados[i,10]})
		Aadd(xAutoCab,{"A1_COD_MUN"	,aDados[i,11]})
		Aadd(xAutoCab,{"A1_BAIRRO" 	,aDados[i,12]})
		Aadd(xAutoCab,{"A1_CGC" 	,aDados[i,13]})
		
Begin Transaction

		MsExecAuto({|x,y| MATA030(x,y)}, xAutoCab, 3)

		If lMsErroAuto
			DisarmTransaction()
			MostraErro()
		EndIf
		
End Transaction
	
	next nCount

	MsgInfo("Processo finalizado")
return

