algoritmo "menuempresa"
// Função :  Simular o menu de cadastro de uma empresa
// Autor :  Jenifer Angelo
// Data : 11/07/2018
// Seção de Declarações
var
opcao : inteiro
cont : inteiro
nome: vetor[1..50] de caracter
idade : vetor[1..50] de inteiro
cpf : vetor[1..50] de real
cod : vetor[1..50] de inteiro
codd :  inteiro
cargo : vetor[1..50] de caracter
opcad : inteiro
opsai : inteiro

inicio
// Seção de Comandos
opcao <- 0
cont <- 1

repita

   escreval ("____Bem Vindes!____")
   escreval ("Digite a opção desejada:")
   escreval ("1 - Cadastrar")
   escreval ("2 - Consultar")
   escreval ("3 - Alterar")
   escreval ("4 - Excluir")
   escreval ("5 - Sair")
   escreval ("___________________")
   leia (opcao)

   escolha opcao
   caso 1
      repita
         escreval ("Digite o nome do funcionárix:")
         leia (nome[cont])
         escreval ("Digite a idade:")
         leia (idade[cont])

         repita
            escreval ("Digite o CPF:")
            leia (cpf[cont])

            se (cpf[cont] > 99999999999) e (cpf[cont] < 10000000000) entao
               escreval ("CPF inválido")
            FIMSE
         ate (cpf[cont] <= 99999999999)

         escreval ("Digite o cargo:")
         leia (cargo[cont])
         escreval ("Digite o código de cadastro:")
         leia (cod[cont])
         escreval ("___Deseja cadastrar outro funcionário?___")
         escreval ("1 - Sim")
         escreval ("2 - Não")
         leia (opcad)

         se (opcad = 1 ) entao
            cont <- cont + 1
         senao
            cont <- cont + 50
            LIMPATELA
         fimse
      ate (cont > 50)


   caso 2
      cont <- 1
      escreval ("Digite o código desejado:")
      leia (codd)
      repita
         se (codd = cod[cont]) entao
            limpatela
            escreval ("Estes são os dados do funcionário: ")
            escreval ("Nome: ", nome[cont])
            escreval ("Idade: ", idade[cont])
            escreval ("Cargo: ", cargo[cont])
            escreval ("CPF: ", cpf[cont])
            escreval ("")
            escreval ("")


            escreval ("__Deseja consultar os dados de outro funcionário?__")
            escreval ("__ Pressione 1 para sim ou 2 para não __")
            escreval ("Volte sempre!")
            leia (opsai)
            se (opsai = 1) entao
               cont <- cont + 1
            senao
            cont <- cont + 50
            fimse
         senao
            cont <- cont + 1
         fimse
      ate cont > 50
      


      //caso 3

      //caso 4


   FIMESCOLHA
ate (opcao = 5)
fimalgoritmo
