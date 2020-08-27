algoritmo "semnome"
// Função :
// Autor :
// Data : 04/07/2018
// Seção de Declarações 
var
  produto : real
  desconto: real
  total: real
inicio
// Seção de Comandos 
   escreva ("Digite o valor do produto: R$ ")
   leia (produto)
   desconto <- (produto) * 0.09
   escreval ("Você ganhou um desconto de R$ ", desconto)
   total <- (produto) - (desconto)
   escreval ("Então só terá que pagar R$ ", total, " !")
   escreva ("Volte sempre!! ^-^")
   
fimalgoritmo
