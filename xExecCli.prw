#Include 'Protheus.ch'

User Function xExecCli()

	Private xAutoCab 	:= {}
	//Private lMsHelpAuto := .T.
	//Private lAutoErrNoFile := .T.
	Private lMsErroAuto := .F.

	//Monta Array para Execução.
	xAutoCab := {}
	Aadd(xAutoCab,{"A1_FILIAL" 	,xFilial("SA1")		 	})
	Aadd(xAutoCab,{"A1_COD"	 	,"000100"				})
	Aadd(xAutoCab,{"A1_LOJA"	,"01"					})
	Aadd(xAutoCab,{"A1_PESSOA" 	,"F"					})
	Aadd(xAutoCab,{"A1_TIPO" 	,"F"					})
	Aadd(xAutoCab,{"A1_NOME"	,"TESTE EXEC AUTO"		})
	Aadd(xAutoCab,{"A1_NREDUZ" 	,"TESTE EXEC AUTO"		})
	Aadd(xAutoCab,{"A1_END"	 	,"RUA EXEC"				})
	Aadd(xAutoCab,{"A1_EST"	 	,"SP"					})
	Aadd(xAutoCab,{"A1_MUN"		,"SAO PAULO"	})
	//Aadd(xAutoCab,{"A1_COD_MUN"	,"35503"				})
	Aadd(xAutoCab,{"A1_COD_MUN","50308"				})
	Aadd(xAutoCab,{"A1_BAIRRO" 	,"TESTE"				})
	//Aadd(xAutoCab,{"A1_CGC" 	,'12345678999'})
	Aadd(xAutoCab,{"A1_CGC" 	,'51242349030'})
	
Begin Transaction 

	MsExecAuto({|x,y| MATA030(x,y)}, xAutoCab, 3)
	//2-Visualização
	//3-Inclusão
	//4-Alteração
	//5-Exclusão
	
	If lMsErroAuto
		DisarmTransaction()
		MostraErro()
	EndIf
	

End Transaction

	MsgInfo("Processo finalizado")
return

