*** Variables ***


&{Registro}   #Lista que cotem os Xpaths da 1º Tela do Cadastro
...    Input_name=//*[@id="name"]   #Input com o Nome do user
...    Input_phone=//*[@id="phoneNumber"]   #Input com numero do user  
...    Selection_patrimonio=//*[@id="intentInvest"]    #Seleção do patriminio que o user possue  
...    Opc_SelecionaValor=//*[contains(text(), " Até R$ 5 mil ")]    #Seleciona a opc "Até R$ 5 mil"
...    Input_CPF=//*[@id="cpfcnpj"]          #Input com o CPF do user
...    Input_Email=//*[@id="email"]          #Input com o Email do User
...    Input_Senha=//*[@id="password"]     #Input com a Senhe do user
...    Input_RepitaSenha=//*[@id="rePassword"]    #Repete a senha do user
...    Button_Continua=//*[@id="step-1"]/div/div[2]/div[2]/div[8]/div/button     #Botão continua da 1ºpagina
...    Button_ContinuaPagLogin=//*[@id="step-1"]/div/div/div[2]/div/div[2]/div[6]/div/button
    


&{DadosPessoais}  #Lista que cotem os Xpaths da 2º Tela do Cadastro
...   Radio_genero=//*[@id="gender"]/div[1]/label   #Radio que define o genero
...   Genero=//*[@id="gender"]/div[1]/label         #Escolhe o Genero Masculino
...   Input_DataNasc=//*[@id="birthDate"]           #Input com a Data de Nascimento
...   Modal_data=//*[@id="global-wrapper"]/app-register-wrap/div/app-personalinformations/modal-info-under-age-restriction/section/div/div/div 
...   Input_Mae=//*[@id="motherName"]               #Input com o Nome da Mãe
...   Input_Pai=//*[@id="fatherName"]               #Input com o Nome do Pai
...   Selection_Estado=//*[@id="birthStateID"]      #Seleção de Estado
...   Opc_SelecionarEstado=//*[contains(text(), "Bahia")]    #Seleciona a Opc "Bahia"
...   Input_Cidade=//*[@id="birthCityID"]                    #Input com o nome da Cidade
...   Selection_Formacao=//*[@id="educationDegreeID"]        #Seleção de Formação Academica
...   Opc_Formacao=//*[contains(text(), "Ensino Superior")]   #Seleciona a Opc "Ensino Superior"
...   Selection_EstadoCivil=//*[@id="maritalStatusID"]       #Seleção Estado Civil
...   Opc_EstadoCivil=//*[contains(text(), "Solteiro(a)")]   #Seleciona a Opc "Solteiro(a)"
...   Button_ContinuaDP=//*[@id="step-2"]/div/div/div[1]/div/div[11]/div/button  #Botão de continua da pagina


&{Documentos}  #Lista que cotem os Xpaths da 3º Tela do Cadastro
...  Radio_Doc=//*[@id="typeID_0"]   #Radio que define o documento 
...  Opc_CNH=//*[@id="typeID"]/div[1]/label  #Escolhe a opc CNH
...  Opc_RG=//*[@id="typeID"]/div[2]/label   #Escolhe a opc RG
...  Input_CNH=(//*[@id="identificationDocumentNumber"])[1]   # Input dos n da CNH (O 1 indica que é o 1º Xpath buscado com esse nome)
...  Input_DataValid=//*[@id="identificationDocumentExpirationDate"]   #Input com os dados da data de validade
...  Selection_OrgEmissor=(//*[@id="identificationDocumentIssuedStateID"])[2]    #Seleção de Estado
...  Opc_SelecionarEstadoDoc=//*[contains(text(), "Bahia")]    #Seleciona a Opc "Bahia"
...  Input_DataEmiss=(//*[@id="identificationDocumentIssuedDate"])[1]    #Input com os dados da data de Emissão
...  Input_CodigoSeguranca=//*[@id="identificationDocumentSecurityCode"]    #Input com os dados do codigo de segurança
...  ButtonCotinuaDoc=//*[@id="ofAge"]/div/div/div[2]/div/div[4]/div/button[2]    #Botão de continua da pagina


&{Endereco}
...  Input_Cep=//*[@id="zipCode"]   #Input com o CEP
...  Input_Edereco=//*[@id="streetName"]   #Input com o ENdereço
...  Input_Num=//*[@id="number"]   #Input com o Numero 
...  Input_Complemento=//*[@id="complement"]   #Input com o Complemento da casa
...  Input_Bairro=//*[@id="district"]   #Input com o Bairro
...  Button_ContinuaEnd=//*[@id="step-3"]/div/div/div[2]/div/div[9]/div/button[2]  #Botão de continua da pagina


&{DadosPatrimonio}
...  Selection_Profissao=//*[@id="jobTypeID"]    #Seleção de Profissao
...  Opc_Profissao=//*[contains(text(), " Administrador ")]    #Seleciona a Opc "Administrador"
...  Radio_Prof=//*[@id="isEmployed_0"]   #Radio que define se esta trabalhando ou não
...  Opc_Prof=//*[@id="isEmployed_1"]     #Seleciona a Opc "Não"
...  Selection_Renda=(//*[@id="extraIncome"])[2]      #Seleção de Renda
...  Opc_Renda=//*[contains(text(), " Até R$1,5 mil")]    #Seleciona a Opc "Até R$1,5 mil"
...  Input_Moveis=//*[@id="movablePropertiesValue"]       #Input com o valor dos bens moveis
...  Check_Diretrizes=//*[@id="mat-checkbox-1"]/label/div     #Checkpont Diretrizes 
...  Check_Docs=//*[@id="mat-checkbox-2"]/label/div       #Checkpont Documentos 
...  Check_Privac=//*[@id="mat-checkbox-3"]/label/div     #Checkpont Privacidade
...  Div_Contrato=//*[@id="step-4"]/div/div/div[2]/div[5]/div/div/div[1]/div    #Div onde fica o Contrato
...  Check_Contrato=//*[@id="mat-checkbox-4"]/label/div     #Checkpont Contrato
...  Button_ContinuaPatri=//*[@id="step-4"]/div/div/div[2]/div[6]/div/div/button[2]   #Botão de continua da pagina

&{Quasela}
...  Opc_Obj=//*[@id="global-wrapper"]/app-register-end/div/section/div/div/div/div/div[2]/form/div[1]/label   #Clika na primeira opc


&{login}
...  Button_login=//*[@id="__next"]/div[2]/div/div[2]/a[1]
...  Button_Cadastrese=//*[@id="global-wrapper"]/signin/div/div/div/nav/div/div[1]/div/a
