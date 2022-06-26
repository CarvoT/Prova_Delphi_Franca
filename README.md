# Prova_Delphi_Franca
Desenvolvido por Lucas Carvalho Goulart

# Proposta

Criar uma aplicação com três tarefas distintas acessadas através de um menu.
Cada uma das tarefas deverá abrir uma janela do tipo MDICHILD.

## Tarefa 1

Utilizando um componente criado pelo desenvolvedor, criar uma aplicação que monta um comando sql através das informações de campos, tabelas e condições.

O componente deve ser baseado no componente TFDQuery e possuir os seguintes atributos a mais:
- spCondicoes: TStringList
- spColunas: TStringList
- spTabelas: TStringList

E deve implementar a função "GerarSQL".

## Tarefa 2

Criar duas threads que irão executar em paralelo realizando uma contagem de 1 a 100.
A cada iteração da contagem, um determinado tempo deve ser esperado, este tempo deve ser informado pelo usuário.

A visualização do contagem deve ser exibida em duas progressbar no formulário da tarefa.

## Tarefa 3

Criar uma grid com os seguintes campos:
- IdProjeto
- NomeProjeto
- Valor

Na tela devem existir duas edits, uma para exibição do valor total e outra para exibição do valor total de divisões.

> O valor de divições é obtido da seguinte maneira:
> - Projeto 1 = 10,00 | Projeto 2 = 20,00 | Projeto3 = 30,00
> - (20 / 10) = 2
> - (30 / 20) = 1,5
> - Total a ser exibido em “Total divisões R$” = 3,5 (2+1,5)

Os valores somente são exibidos após o clique no botão dedicado para cada cálculo.

**Os componentes ligados a grid devem ser criados em tempo de execução**


# Itens não implementados

Testes unitários
