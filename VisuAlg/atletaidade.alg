algoritmo "semnome"
// Função :
// Autor :
// Data : 11/07/2018
// Seção de Declarações
var
nome : caracter
idade : inteiro
inicio
// Seção de Comandos
escreva ("Digite o nome: ")
leia (nome)
escreva ("Digite a idade: ")
leia (idade)

se (idade >= 5) e (idade <= 10) entao
   escreva ("Este atleta está na categoria Infantil")
senao
   se (idade >= 11) e (idade <= 15) entao
      escreva ("Este atleta está na categoria Juvenil")
   senao
      se (idade >= 16) e (idade <= 20) entao
         escreva ("Este atleta está na categoria Junior")
      senao
         se (idade >= 21) e (idade <= 25) entao
            escreva ("Este atleta está na categoria Profissional")
         senao
            se (idade <= 6) ou (idade >= 26) entao
               escreva ("Infelizmente não há categoria disponível para a sua idade no momento")
            FIMSE
         FIMSE
      FIMSE
   FIMSE
FIMSE
fimalgoritmo
