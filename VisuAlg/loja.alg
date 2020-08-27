algoritmo "semnome"
// Função :
// Autor :
// Data : 04/07/2018
// Seção de Declarações 
var

compra : real
opcaopag : inteiro
desconto : real
valortotal : real
juros : real
parcela: real
nparcela : inteiro

inicio
// Seção de Comandos
escreva ("Digite o valor total da sua compra: ")
leia (compra)
escreval (" Formas de pagamento disponíveis ")
escreval (" 1 - À Vista ")
escreval (" 2 - Cheque para trinta dias ")
escreval (" 3 - Em duas vezes ")
escreval (" 4 - Em três vezes ")
escreval (" 5 - Em quatro vezes ")
escreval (" 6 - À Partir de cinco vezes" )
escreva (" Digite a opção desejada: " )
leia (opcaopag)

escolha opcaopag

caso 1
desconto <- compra * 0.2
valortotal <- compra - desconto
escreval ("__Você conseguiu um desconto de 20%!" )
escreval ("__O valor total da sua compra é R$ ", valortotal)
escreva ("Volte sempre!")

caso 2,3,4
escreval ("__O valor total da sua compra é R$ ", compra, "  parcelada sem juros!")
escreva ("__Volte sempre!!")

caso 5
juros <- compra * 0.03
valortotal <- compra + juros
parcela <- valortotal / 4
escreval ("__O valor total da sua compra é R$ ", valortotal, "!")
escreva ("__Deste modo, cada parcela é R$ ", parcela, "!")

caso 6
juros <- compra * 0.05
valortotal <- compra + juros
escreva ("__Em quantas parcelas você gostaria de dividir a sua compra? ")
leia (nparcela)
parcela <- (valortotal) / (nparcela)
escreval ("__O valor total da sua compra é R$ ", valortotal, "!")
escreva ("__Deste modo, cada parcela é R$ ", parcela, "!")

outrocaso
escreva ("Opção indisponível :(")

FIMESCOLHA

fimalgoritmo
