*** Settings ***
Library         SeleniumLibrary     
Library         FakerLibrary    locale=pt_BR    #importa dados aleatorios
Library         CPFGenerator.py                 #Importa CPF aleatorios
Library         TelefoneGerator.py              #Importa Telefone aleatorio


 
*** Variables ***
# Dados Gerais 
${URL}   https://www.toroinvestimentos.com.br/   # URL do site que será testado
@{Browsers}  chrome  edge   # Lista de navegadores a serem testados
${TituloCadastro}  Toro Investimentos - A melhor experiência digital de investimentos  #Titulo usando no  Switch Window   title=${TituloCadastro} 




# Dados do testes
${NomeFake}                 Nome Para Teste
${SenhaFake}                Senha123!
${DataNasc}                 22/11/2002
${CidadeFake}               Bom Jesus da Lapa
${NomeFakeMae}              Nome da Mae Para Teste
${NomeFakePai}              Nome do Pai Para Teste
${NumCNHFake}               12345678911
${DataEmisFake}             22/11/2030
${DataVencFake}             22/11/2020
${CodSeguFake}              12345678910
${CepFake}                  47.600-000    
${NunFake}                  57
${EndFake}                  Rua para teste
${CompFake}                 Casa
${BairroFake}               Centro
${ValorMoveisFake}          3000
${MenordeIdade}             01/01/2007

