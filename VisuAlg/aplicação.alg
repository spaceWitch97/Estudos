algoritmo "aplicacao"
// Função :
// Autor :
// Data : 27/06/2018
// Seção de Declarações 
var
saldo1: real
saldo2: real
reajuste: real
inicio
// Seção de Comandos 
escreva ("Digite seu saldo atual: R$ ")
leia (saldo1)
reajuste <- (saldo1) * 0.05
escreval ("Seu saldo de aplicação é R$ ",reajuste)
saldo2 <- saldo1 + reajuste
escreva ("Seu saldo total é R$ ", saldo2)
fimalgoritmo
