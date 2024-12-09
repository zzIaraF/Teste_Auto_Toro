<h1 align="center"> Projeto de Automação - Toro Investimentos </h1>


Este projeto foi desenvolvido como parte de um estudo de caso para automação de cenários de teste relacionados à funcionalidade de Login na plataforma da Toro Investimentos [(site oficial)](https://www.toroinvestimentos.com.br/). 


## Descrição do Projeto
O objetivo principal foi criar uma automação estável, funcional e de fácil entendimento, priorizando cenários críticos que foram levantados e descritos em formato Gherkin.

## Tecnologias e Ferramentas Utilizadas
- Framework: Robot Framework
- Web drive Chorme
- Web drive Edge 

- Bibliotecas:
- SeleniumLibrary (para interação com elementos web)
- FakerLibrary (para geração de dados dinâmicos, configurada para locale=pt_BR)
- Repositório: Estruturado com branches padrão (main) e releases de entrega.


## Organização do Projeto

- Lista de Cenários:
Os cenários de teste foram documentados e podem ser acessados [aqui](hhttps://docs.google.com/spreadsheets/d/1p-MAfRrFtlQySo02egF7i2KLXESCi4Qc/edit?usp=sharing&ouid=115703865082978750589&rtpof=true&sd=true). 

- Automação de Cenário Crítico:
Pelo menos um cenário crítico foi selecionado e automatizado. O script está organizado de forma a priorizar a reutilização de código e a legibilidade.

- Relatório de Execução:
O framework gera relatórios detalhados após a execução dos testes, incluindo logs e screenshots em caso de falha.

## Tecnologias e Ferramentas Utilizadas
Framework: Robot Framework

Bibliotecas:
- SeleniumLibrary (para interação com elementos web)
- FakerLibrary (para geração de dados dinâmicos, configurada para locale=pt_BR)

Repositório: Estruturado com branches padrão (main) e releases de entrega.
Organização do Projeto

## Como Executar o Projeto
As pastas do projeto estão organizadas da seguinte forma:

<p align="center">
  <img alt="Organização do projeto" src="Organização das pastas.jpg">
</p>


1. Clone o repositório
2.  Execute o teste: "robot -d Results Testes\Login\TC01.robot"
dessa forma o relatórios é criado na pasta Results!