*** Settings ***
Resource  ../../Steps/Mein_Elements.resource

*** Test Cases ***

# TC01 - Teste de Acesso
#     FOR  ${Browser}  IN  @{Browsers}
#         Log To Console  \nExecutando teste no navegador: ${Browser}   # Escreve no Terminal qual navegador está sendo testado
#         Dado que eu acesse o Site em diferentes navegadores  ${Browser}
#         E fecho o navegador
#     END 

TC01.7 - Teste de Cadastro com credenciais válidas (Abra sua Conta)
    FOR  ${Browser}  IN  @{Browsers}
        Log To Console  \nExecutando teste no navegador: ${Browser}
        Dado que acesse o Site no navegador:  ${Browser}
        Quando entro no Cadastro
        Quando preencho o cadastro   
        E verifico se ha notificações pop up
        Quando preencho os dados pessoais de Data   ${DataNasc}  
        Quando preencho os dados pessoais restantes
        Quando preencho os dados da CNH   
        Quando preencho os dados de endereco
        Dado que preencho os dados patrimoniais
        Quando seleciono o principal objetivo ao abrir uma conta 
        Então fecho o navegador 
    END 


TC02.6 - Teste de Cadastro com credenciais válidas (Faza Login)
    FOR  ${Browser}  IN  @{Browsers}
        Log To Console  \nExecutando teste no navegador: ${Browser}
        Dado que acesse o Site no navegador:  ${Browser}
        E verifico se ha notificações pop up
        Quando entro no login
        Então fecho o navegador 
    END 

TC03.2 - Teste Campo data de nascimento (menor de Idade)
    FOR  ${Browser}  IN  @{Browsers}
        Log To Console  \nExecutando teste no navegador: ${Browser}
        Dado que acesse o Site no navegador:  ${Browser}
        Quando entro no Cadastro
        Quando preencho o cadastro   
        E verifico se ha notificações pop up
        Quando preencho os dados pessoais de Data   ${MenordeIdade} 
        E aparece o Modal de erro
        Então fecho o navegador 
    END 



    

