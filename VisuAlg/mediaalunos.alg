algoritmo "semnome"
// Função :
// Autor :
// Data : 11/07/2018
// Seção de Declarações 
var
nome: caracter
n1: inteiro
n2: inteiro
n3: inteiro
med: real
loop: inteiro
inicio
// Seção de Comandos 
loop <- 0

repita

escreval ("Digite o seu nome: ")
leia (nome)
escreval ("Seja bem vindx, ", nome, "!")
escreval ("Por favor, siga as instruções abaixo para calcular a sua média")
escreval ("Digite a primeira nota: ")
leia (n1)
escreval ("Digite a segunda nota: ")
leia (n2)
escreval ("Digite a terceira nota: ")
leia (n3)
med <- (( n1 + n2 + n3 )/3)
escreval ("A sua média total é de ", med, " pontos!")

escreval ("Deseja começar novamente?")
escreval ("Digite 1 para sim ou 2 para não")
leia (loop)
LIMPATELA
ate loop = 2

fimalgoritmo
