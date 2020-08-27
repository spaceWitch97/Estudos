algoritmo "semnome"
// Função :
// Autor :
// Data : 11/07/2018
// Seção de Declarações
var
opcao : inteiro
nome: caracter
idade : caracter
cpf : real
cod : inteiro
codd : inteiro
cargo : caracter

inicio
// Seção de Comandos
opcao <- 0

repita

   escreval ("____Bem Vindx!____")
   escreval ("Digite a opção desejada:")
   escreval ("1 - Cadastrar")
   escreval ("2 - Consultar")
   escreval ("3 - Alterar")
   escreval ("4 - Excluir")
   escreval ("5 - Sair")
   leia (opcao)

   escolha opcao
   caso 1
      escreval ("Digite o seu nome:")
      leia (nome)
      escreval ("Digite a sua idade:")
      leia (idade)
      repita
         escreval ("Digite o seu CPF:")
         leia (cpf)
         se (cpf > 99999999999) e (cpf < 10000000000) entao
            escreval ("CPF inválido")
         FIMSE
      ate (cpf <= 99999999999)
      escreval ("Digite o seu cargo:")
      leia (cargo)
      escreval ("Digite o seu código de cadastro:")
      leia (cod)

      caso 2
      escreval ("Digite o código desejado:")
      leia (codd)
      se (codd = cod) entao
      escreval ("Estes são os dados do funcionário: ")
      escreval ("Nome: ", nome)
      escreval ("Idade: ", idade)
      escreval ("Cargo: ", cargo)
      escreval ("C.P.F: ", cpf)
      senao
      escreva ("Código Inválido")
      

      //caso 3

      //caso 4
   FIMSE
   FIMESCOLHA
ate (opcao = 5)
fimalgoritmo
