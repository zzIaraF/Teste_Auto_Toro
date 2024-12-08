*** Settings ***
Resource   ../../Resouces/Stettings.resource
Resource   ../../Elements/Mein_Elements.resource


*** Keywords ***
#Cadastro do User
Dado que acesse o Site no navegador:
    [Arguments]  ${Browser}
    Open Browser    ${URL}    ${Browser}   
    Wait Until Element Is Visible   xpath=${Home.ButtonAbraSuaConta}   10  


Quando entro no Cadastro
    Wait Until Element Is Visible   xpath=${Home.ButtonAbraSuaConta}   10  
    Click Element   xpath=${Home.ButtonAbraSuaConta}
    Switch Window   title=${TituloCadastro}  #Muda para a janela com esse titulo
    Wait Until Element Is Visible  xpath=${Registro.Input_name}     10

Quando entro no login
    Wait Until Element Is Visible   xpath=${login.Button_login}   10  
    Click Element   xpath=${login.Button_login}
    Switch Window   title=${TituloCadastro}  #Muda para a janela com esse titulo
    Wait Until Element Is Visible   xpath=${login.Button_Cadastrese}   10
    Click Element   xpath=${login.Button_Cadastrese}
    Wait Until Element Is Visible  xpath=${Registro.Input_name}     10  

#separei essa parte pois Teste do Faca Logi) não tem esses campos na 1º pagina
Quando preencho o patrimonio
    #Patrimonio
    Click Element    xpath=${Registro.Selection_patrimonio}  
    Wait Until Element Is Visible  xpath=${Registro.Selection_patrimonio}     10
    Click Element   xpath=${Registro.Opc_SelecionaValor}
Quando preencho o telefone
    #Telefone do User
    Wait Until Element Is Visible  xpath=${Registro.Input_phone}     10
    ${TelefoneFake}=   gerador_telefonico     #FakeLibery gera de forma aleatoria os dados
    Input Text   xpath=${Registro.Input_phone}     ${TelefoneFake}   

Quando preencho o cadastro
    #nome do User
    Wait Until Element Is Visible  xpath=${Registro.Input_name}     10
    Input Text  xpath=${Registro.Input_name}     ${NomeFake}  
    #CPF
    Wait Until Element Is Visible  xpath=${Registro.Input_CPF}     10
    ${CPFFake}=    Generate Cpf
    Input Text   xpath=${Registro.Input_CPF}     ${CPFFake}
    #Email
    Wait Until Element Is Visible  xpath=${Registro.Input_Email}     10 
    ${EmailFake}  FakerLibrary.Email
    Input Text   xpath=${Registro.Input_Email}     ${EmailFake}  
    #Senha
    Wait Until Element Is Visible  xpath=${Registro.Input_Senha}     10
    Input Text   xpath=${Registro.Input_Senha}     ${SenhaFake} 
    Wait Until Element Is Visible  xpath=${Registro.Input_RepitaSenha}     10
    Input Text   xpath=${Registro.Input_RepitaSenha}     ${SenhaFake}

Quando Clico em continua (Abra sua Conta)
    #Proxima Pagina 
    Wait Until Element Is Visible  xpath=${Registro.Button_Continua}     10
    Click Element   xpath=${Registro.Button_Continua}

Quando Clico em continua (Faca Login)
#Proxima Pagina 
    Wait Until Element Is Visible  xpath=${Registro.Button_ContinuaPagLogin}     10
    Click Element   xpath=${Registro.Button_ContinuaPagLogin}

E verifico se ha notificações pop up    #Verifica se existe um  Notificações pop-up. Se existir ele é ignorado
    Run Keyword And Ignore Error    Handle Alert    DISMISS

Quando preencho os dados pessoais de nascimento
    [Arguments]    ${DataNasc}   
    Wait Until Element Is Visible   xpath=${DadosPessoais.Input_DataNasc}  10
    Input Text   xpath=${DadosPessoais.Input_DataNasc}     ${DataNasc}

E aparece o Modal de erro
    Wait Until Element Is Visible   xpath=${DadosPessoais.Modal_data}  10

Quando preencho os dados pessoais restantes  
    Wait Until Element Is Visible  xpath=${DadosPessoais.Input_Mae}     40
    #Genero
    Click Element    xpath=${DadosPessoais.Genero}  
    #nome da mãe 
    Wait Until Element Is Visible   xpath=${DadosPessoais.Input_Mae}  10
    Input Text   xpath=${DadosPessoais.Input_Mae}     ${NomeFakeMae}
    #nome do Pai
    Wait Until Element Is Visible   xpath=${DadosPessoais.Input_Pai}  10
    Input Text   xpath=${DadosPessoais.Input_Pai}     ${NomeFakePai}
    #Estado
    Click Element    xpath=${DadosPessoais.Selection_Estado}  
    Wait Until Element Is Visible  xpath=${DadosPessoais.Opc_SelecionarEstado}     10
    Click Element   xpath=${DadosPessoais.Opc_SelecionarEstado}
    #Cidade
    Input Text   xpath=${DadosPessoais.Input_Cidade}     ${CidadeFake}
    Click Element    xpath=${DadosPessoais.Selection_Formacao}  
    #Formação Academica
    Wait Until Element Is Visible  xpath=${DadosPessoais.Opc_Formacao}     10
    Click Element   xpath=${DadosPessoais.Opc_Formacao}
    #Estado civil
    Click Element    xpath=${DadosPessoais.Selection_EstadoCivil}  
    Wait Until Element Is Visible  xpath=${DadosPessoais.Opc_EstadoCivil}     10
    Click Element   xpath=${DadosPessoais.Opc_EstadoCivil} 
    #Patrimonio
    Click Element    xpath=${Registro.Selection_patrimonio}  
    Wait Until Element Is Visible  xpath=${Registro.Selection_patrimonio}     10
    Click Element   xpath=${Registro.Opc_SelecionaValor} 
    #As vezes o input do telefone não fica preenchido mesmo sendo digitado na 1º vez, esse codigo gera um nº novo
    Wait Until Element Is Visible  xpath=${Registro.Input_phone}     10
    ${TelefoneFake}=   gerador_telefonico
    Input Text   xpath=${Registro.Input_phone}     ${TelefoneFake} 
    #Proxima pagina
    Wait Until Element Is Visible  xpath=${DadosPessoais.Button_ContinuaDP}     10   #DP = Dados Pessoais
    Click Element   xpath=${DadosPessoais.Button_ContinuaDP}  


 Quando preencho os dados da CNH
    #Seleciona a CNH
    Wait Until Element Is Visible   xpath=${Documentos.Radio_Doc}   10
    Click Element   xpath=${Documentos.Opc_CNH} 
    #CNH
    Wait Until Element Is Visible   xpath=${Documentos.Input_CNH}   10 
    Input Text    xpath=${Documentos.Input_CNH}    ${NumCNHFake}  
    #Data de Validade
    Wait Until Element Is Visible   xpath=${Documentos.Input_DataValid}   10  
    Input Text    xpath=${Documentos.Input_DataValid}    ${DataEmisFake}  
    #Orgao emissor 
    Wait Until Element Is Visible  xpath=${Documentos.Selection_OrgEmissor}     10
    Click Element   xpath=${Documentos.Opc_SelecionarEstadoDoc}  
    #Data de Vencimento
    Wait Until Element Is Visible   xpath=${Documentos.Input_DataEmiss}   10  
    Input Text    xpath=${Documentos.Input_DataEmiss}    ${DataVencFake} 
    #Codigo de Segurança
    Wait Until Element Is Visible   xpath=${Documentos.Input_CodigoSeguranca}   10  
    Input Text    xpath=${Documentos.Input_CodigoSeguranca}    ${CodSeguFake} 
    #Proxima pagina
    Click Element   xpath=${Documentos.ButtonCotinuaDoc}

Quando preencho os dados de endereco
    #Confere se Endereço e Bairro esta visivel
    Wait Until Element Is Visible     xpath=${Endereco.Input_Edereco}     10
    Wait Until Element Is Visible     xpath=${Endereco.Input_Bairro}       10 
    #CEP   
    Wait Until Element Is Visible     xpath=${Endereco.Input_Cep}     10
    Input Text   xpath=${Endereco.Input_Cep}    ${CepFake}  
    Sleep   2   #O Edge precisa dessa pausa para dar tempo de carregar o campo de cidade\estado
    #Numero
    Wait Until Element Is Visible     xpath=${Endereco.Input_Num}      10
    Input Text   xpath=${Endereco.Input_Num}    ${NunFake} 
    #Complemento
    Wait Until Element Is Visible     xpath=${Endereco.Input_Complemento}      10
    Input Text    xpath=${Endereco.Input_Complemento}    ${CompFake}         
    #Endereço e bairro mesmo depois de preenchidos podem "sumir" por conta da automação essa parte do codigo verifica isso
    Input Text   xpath=${Endereco.Input_Edereco}   ${EndFake}
    Input Text   xpath=${Endereco.Input_Bairro}     ${BairroFake}
    Sleep   2      
    ${endereco_value}=   Get Value    xpath=${Endereco.Input_Edereco}    #Verificar se o campo de endereço está vazio e preencher novamente
    Run Keyword If   '${endereco_value}' == ''   Input Text   xpath=${Endereco.Input_Edereco}   ${EndFake}    
    ${bairro_value}=     Get Value    xpath=${Endereco.Input_Bairro}    #Verificar se o campo de bairro está vazio e preencher novamente 
    Run Keyword If   '${bairro_value}' == ''   Input Text   xpath=${Endereco.Input_Bairro}     ${BairroFake}
    Sleep   2
    #Proxima pagina
    Wait Until Element Is Visible     xpath=${Endereco.Button_ContinuaEnd}       10 
    Click Element   xpath=${Endereco.Button_ContinuaEnd}

Quando preencho os dados patrimoniais
    #profissao
    Wait Until Element Is Visible  xpath=${DadosPatrimonio.Selection_Profissao}     10
    Click Element   xpath=${DadosPatrimonio.Selection_Profissao}   
    Click Element    xpath=${DadosPatrimonio.Opc_Profissao} 
    #Se exerce a Profissao
    Wait Until Element Is Visible  xpath=${DadosPatrimonio.Radio_Prof}     40
    Click Element    xpath=${DadosPatrimonio.Opc_Prof} 
    #Renda Imoveis    
    Wait Until Element Is Visible  xpath=${DadosPatrimonio.Selection_Renda}     10
    Click Element   xpath=${DadosPatrimonio.Selection_Renda}   
    Click Element    xpath=${DadosPatrimonio.Opc_Renda} 
    #Renda moveis        
    Wait Until Element Is Visible  xpath=${DadosPatrimonio.Input_Moveis}    10
    Input Text        xpath=${DadosPatrimonio.Input_Moveis}        ${ValorMoveisFake} 
    #Diretrizes  
    Wait Until Element Is Visible   xpath=${DadosPatrimonio.Check_Diretrizes}   10
    Click Element  xpath=${DadosPatrimonio.Check_Diretrizes}
    #Documentos  
    Wait Until Element Is Visible   xpath=${DadosPatrimonio.Check_Docs}   10
    Click Element  xpath=${DadosPatrimonio.Check_Docs}
    #Privacidade   
    Wait Until Element Is Visible   xpath=${DadosPatrimonio.Check_Privac}   10
    Click Element  xpath=${DadosPatrimonio.Check_Privac}
    #Essa parte do codigo usar JavaScript para "rolar" a dive permitindo que checklist seja clickado
    Execute JavaScript    var div = document.evaluate('${DadosPatrimonio.Div_Contrato}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue; div.scrollTop = div.scrollHeight;
    Wait Until Element Is Visible   xpath=${DadosPatrimonio.Check_Contrato}   10   
    Click Element  xpath=${DadosPatrimonio.Check_Contrato}
    #Proxima pagina 
    Double Click Element   xpath=${DadosPatrimonio.Button_ContinuaPatri}
    
Então fecho o navegador 
    Close Browser   #fecha o navegador


