algoritmo "salario"
// Função :
// Autor :
// Data : 04/07/2018
// Seção de Declarações
var
nome: caracter
cargo : caracter
salario : real
salario2 : real
reajuste : real
inicio
// Seção de Comandos
escreva ("Digite o seu nome: ")
leia (nome)
escreva ("Digite o seu cargo: ")
leia (cargo)
escreva ("Digite o seu salário: ")
leia (salario)
se (cargo = "Estagiario") entao
   reajuste <- (salario) * 0.3
   salario2 <- (salario) + (reajuste)
   escreva ("Seu novo salário é R$ ", salario2)
   senao
   se (cargo = "Senior") entao
      reajuste <- (salario) * 0.2
      salario2 <- (salario) + (reajuste)
      escreva ("Seu novo salário é R$ ", salario2)
      senao
      se (cargo = "Master") entao
         reajuste <- (salario) * 0.1
         salario2 <- (salario) + (reajuste)
         escreva ("Seu novo salário é R$ ", salario2)
      FIMSE
   FIMSE
FIMSE
fimalgoritmo
