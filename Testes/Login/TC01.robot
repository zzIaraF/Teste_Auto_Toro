*** Settings ***
Resource  ../../Steps/Main_Elements.resource

*** Test Cases ***


TC01.7 - Teste de Cadastro com credenciais válidas (Abra sua Conta)
    FOR  ${Browser}  IN  @{Browsers}
        Log To Console  \nExecutando teste no navegador: ${Browser}
        Dado que acesse o Site no navegador:  ${Browser}
        Quando entro no Cadastro
        Quando preencho o patrimonio
        Quando preencho o telefone
        Quando preencho o cadastro 
        Quando Clico em continua (Abra sua Conta)  
        E verifico se ha notificações pop up
        Quando preencho os dados pessoais de nascimento   ${DataNasc}  
        Quando preencho os dados pessoais restantes
        Quando preencho os dados da CNH   
        Quando preencho os dados de endereco
        Quando preencho os dados patrimoniais
        Então fecho o navegador 
    END 


TC02.6 - Teste de Cadastro com credenciais válidas (Faca Login)
    FOR  ${Browser}  IN  @{Browsers}
        Log To Console  \nExecutando teste no navegador: ${Browser}
        Dado que acesse o Site no navegador:  ${Browser}
        E verifico se ha notificações pop up
        Quando entro no login
        Quando preencho o cadastro   
        Quando Clico em continua (Faca Login)
        Então fecho o navegador 

    END 

TC03.2 - Teste Campo data de nascimento (menor de Idade)
    FOR  ${Browser}  IN  @{Browsers}
        Log To Console  \nExecutando teste no navegador: ${Browser}
        Dado que acesse o Site no navegador:  ${Browser}
        Quando entro no Cadastro
        Quando preencho o patrimonio
        Quando preencho o telefone
        Quando preencho o cadastro 
        Quando Clico em continua (Abra sua Conta)  
        E verifico se ha notificações pop up
        Quando preencho os dados pessoais de nascimento   ${MenordeIdade} 
        E aparece o Modal de erro
        Então fecho o navegador 
    END 



    

