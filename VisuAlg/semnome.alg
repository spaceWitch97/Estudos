algoritmo "Sistema de Cadastro"
// Função : Banco de dados de uma empresa
// Autor : Renato Silva
// Data : 01/08/2018
// Seção de Declarações

var

i: inteiro
opcads: inteiro
alteracao: inteiro
contname: inteiro
opcao: inteiro      // Variável para saber o que o usuário deseja fazer
cont: inteiro      // Variável contador para o repita e para os vetores
codd: inteiro        // Variável de comparação para identificar o cliente cadastrado
opcad: inteiro       // Variável para saber se o usuário deseja sair ou continuar uma tarefa
nome: vetor[1..50] de caracter      // Variável vetor de 50 espaços para armazenar nomes do tipo caracter
idade: vetor[1..50] de inteiro     // Variável vetor de 50 espaços para armazenar idade do tipo inteiro
cpf: vetor[1..50] de real         // Variável vetor de 50 espaços para armazenar cpf do tipo real
cod: vetor[1..50] de inteiro        // Variável vetor de 50 espaços para armazenar cod do tipo inteiro
cargo: vetor[1..50] de caracter      // Variável vetor de 50 espaços para armazenar cargo do tipo caracter

inicio
// Seção de Comandos
opcao <- 0  // Atribuino valor na variável para iniciar em 0

PARA i DE 1 ATE 50 FACA
   nome[i] <- "VAZIO"
FIMPARA

repita  // Função Repita principal
   cont <- 1  // Atribuindo valor na variável para iniciar em 1
   ESCREVAL ("--------------------------------------------------------------------------------")
   ESCREVAL ("|                            BANCO DE DADOS Ver. 0.2                           |")
   ESCREVAL ("--------------------------------------------------------------------------------")
   ESCREVAL ("|                     1. CADASTRAR CLIENTES                                    |")
   ESCREVAL ("|                     2. BUSCAR CLIENTE                        OPÇÕES          |")
   ESCREVAL ("|                     3. ALTERAR DADOS DO CLIENTE            | 1- Sim |        |")
   ESCREVAL ("|                     4. EXCLUIR CLIENTE                     | 2- Não |        |")
   ESCREVAL ("|                     5. SAIR                                ----------        |")
   ESCREVAL ("|                                                                              |")
   ESCREVAL ("--------------------------------------------------------------------------------")
   ESCREVA  ("                                   X: ")
   leia (opcao)    // leitura da opção escolhida

   escolha opcao   // função "escolha" para realizar operações baseado na opção escolhida

   caso 1  // Cadastro do Cliente

      repita  // Função repita para repitir o cadastro até o usuário escolha sair

         limpatela // limpar o menu de opções para organizar a tela do DOS com menu do "Cadastrar Cliente"
         Escreval ("|       BANCO DE DADOS Ver. 0.2                |")
         Escreval ("|                                  OPÇÕES      |")
         Escreval ("|        >> CADASTRAR            | 1- SIM |    |")  // menu de exibição (somente para o visual)
         Escreval ("|            CLIENTE  <<         | 2- NÃO |    |")
         Escreval ("|                                ----------    |")
         Escreval ("|_______________________________________________")
         Escreval ("")

         repita
            contname <- 1
            se (nome[cont] = "VAZIO") entao
               escreva ("Digite o NOME do cliente: ")
               leia (nome[cont])
               contname <- 51
            senao
               cont <- cont + 1
               contname <- contname + 1
            fimse
         ate contname > 50

         escreva ("Digite a IDADE do cliente: ")
         leia (idade[cont])  // leitura da idade do cliente

         escreva ("Digite o CARGO do cliente: ")
         leia (cargo[cont])  // leitura do cargo do cliente

         repita // função repita para identificar se o CPF foi digitado da maneira correta, ou seja, irá repetir até digitar a quantia certa de numeros;
            escreva ("Digite o CPF do cliente: ")
            leia (cpf[cont])

            se (cpf[cont] > 10000000000) e (cpf[cont] < 99999999999)  entao  // se foi digitado numeros entre 10000000000 e 99999999999, entao, o programa irá prosseguir.
               escreval ("")
               escreval ("Cadastro realidado com sucesso!!!")
            senao  // Caso contrário, ele irá repetir informando que o CPF digitado está inválido
               Escreval ("CPF inválido... Verifique se a numeração está correta e tente novamente")
            fimse
         ate (cpf[cont] >= 10000000000) e (cpf[cont] <= 99999999999)  // irá repetir até a quantidade de numeros do CPF está correta

         cod[cont] <- cont // Nesta linha, estou informando que o meu contador será o numero de cadastro do Cliente... Ex: Se meu contador estiver no 3, isso quer dizer que já cadastrei 2 cliente e esse é o terceiro... Então, o codigo de cadastro dele será o 3;

         escreval ("Anote o seu CÓDIGO DE CADASTRO: RJ000-",cod[cont]) // O RJ000- é só um visual na hora da execução. O que vai valer mesmo é o numero do contador (1, 2, 3...)
         escreval ("")
         escreva ("Deseja cadastrar outro Cliente? X: ")
         leia (opcad) // condicional para saber se o programa irá repetir ou prosseguir

         se (opcad = 1 ) entao // 1 = SIM ... programa irá repetir o procedimento de cadastro pois o contador não chegou a 50
            cont <- cont + 1
            limpatela
         senao
            cont <- cont + 50 // 2 = NÃO ... programa irá voltar para o menu de opções pois o contador está acima de 50
            limpatela
         fimse

      ate cont > 50  // fim da repetição pois o contador chegou em seu máximo ao escolher a opção "2- NÃO"

      cont <- 1 //  Voltando o contador para a posição 1. Caso eu retire essa linha, o contador irá valer +50 e o programa não executará as outras funções

   caso 2

      limpatela     // limpar o menu de opções para organizar a tela do DOS com menu do "Buscar Cliente"
      Escreval ("|       BANCO DE DADOS Ver. 0.2                |")
      Escreval ("|                                  OPÇÕES      |")
      Escreval ("|        >> BUSCAR               | 1- SIM |    |")  // menu de exibição (somente para o visual)
      Escreval ("|            CLIENTE <<          | 2- NÃO |    |")
      Escreval ("|                                ----------    |")
      Escreval ("|_______________________________________________")
      Escreval ("")

      Escreva ("Digite o CÓDIGO do Cliente Cadastrado: RJ000-")
      leia (codd)  // leitura do codigo do cliente cadastrado

      Repita // função repita para repetir até o cliente ser achado

         se (codd = cod[cont]) entao // Se o codd digitado por igual ao cod[cont], então, ele exibirá as informações do cliente

            limpatela
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("|                                 DADOS DO CLIENTE                             |")
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("                         NOME: ", nome[cont],"                                  ")
            ESCREVAL ("                         IDADE: ", idade[cont],"                                ")
            ESCREVAL ("                         CARGO: ", cargo[cont],"                                ")    // menu de exibição (somente para o visual)
            ESCREVAL ("                         C.P.F: ", cpf[cont],"                                  ")
            ESCREVAL ("                                                                                ")
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("                                                                                ")
            ESCREVAL ("                                                                                ")
            ESCREVAL ("                                                                                ")

            cont <- cont + 50   // Caso o programa ache o cliente cadastrado, o contador valerá +50, forçando o programa a voltar pro menu;

         senao

            cont <- cont + 1   // Caso o programa não ache o cliente cadastrado, o contador irá valer sempre +1, verificando posição por posição até chegar em 50

         fimse
      ate cont > 50  // fim da repetição

      cont <- 1  //  Voltando o contador para a posição 1. Caso eu retire essa linha, o contador irá valer +50 e o programa não executará as outras funções


   caso 3  // Alterar dados do Cliente

      limpatela  // limpar o menu de opções para organizar a tela do DOS com menu do "Alterar Dados do Cliente"
      Escreval ("|       BANCO DE DADOS Ver. 0.2                |")
      Escreval ("|                                  OPÇÕES      |")
      Escreval ("|        >> ALTERAR DADOS        | 1- SIM |    |") // menu de exibição (somente para o visual)
      Escreval ("|            DO CLIENTE <<       | 2- NÃO |    |")
      Escreval ("|                                ----------    |")
      Escreval ("|_______________________________________________")
      Escreval ("")

      Escreva ("Digite o CÓDIGO do Cliente Cadastrado: RJ000-")
      leia (codd)  // leitura do código cadastrado

      Repita

         se (codd = cod[cont]) entao // condicional para localizar o cliente
            limpatela
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("|                        DADOS DO CLIENTE SOLICITADO                           |")
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("                         1 | NOME: ", nome[cont],"                              ")
            ESCREVAL ("                         2 | IDADE: ", idade[cont],"                            ")
            ESCREVAL ("                         3 | CARGO: ", cargo[cont],"                            ")    // menu de exibição (somente para o visual)
            ESCREVAL ("                         4 | CPF: ", cpf[cont],"                                ")
            ESCREVAL ("                                                                                ")
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("                                                                                ")
            ESCREVA ("             Digite o código referente ao item que deseja alterar:")

            leia (alteracao)

            se (alteracao = 1) entao
               escreva ("                        Digite o NOME do cliente: ")
               leia (nome[cont])
               cont <- 51
            senao
               se (alteracao = 2) entao
                  escreva ("                        Digite a IDADE do cliente: ")
                  leia (idade[cont])
                  cont <- 51
               senao
                  se (alteracao = 3) entao
                     escreva ("                        Digite o CARGO do cliente: ")
                     leia (cargo[cont])
                     cont <- 51
                  senao
                     escreva ("                        Digite o CPF do cliente: ")
                     leia (cpf[cont])
                     cont <- 51
                  fimse
               fimse
            fimse

         senao
            cont <- cont + 1   // Se ele não localizar o cliente, o contador vai subindo uma posição até achar

         fimse


      ate cont > 50  // fim da repetição

      cont <- 1  //  Voltando o contador para a posição 1. Caso eu retire essa linha, o contador irá valer +50 e o programa não executará as outras funções

   caso 4
      Escreva ("Digite o CÓDIGO do Cliente Cadastrado: RJ000-")
      leia (codd)

      Repita

         se (codd = cod[cont]) entao
            limpatela
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("|                        DADOS DO CLIENTE SOLICITADO                           |")
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("                         1 | NOME: ", nome[cont],"                              ")
            ESCREVAL ("                         2 | IDADE: ", idade[cont],"                            ")
            ESCREVAL ("                         3 | CARGO: ", cargo[cont],"                            ")
            ESCREVAL ("                         4 | CPF: ", cpf[cont],"                                ")
            ESCREVAL ("                                                                                ")
            ESCREVAL ("--------------------------------------------------------------------------------")
            ESCREVAL ("                                                                                ")
            ESCREVAL ("                   Tem certeza que deseja excluir este cadastro?")
            ESCREVAL ("                     Digite  |1|  para SIM  ou  |2|  para NÃO")

            leia (opcads)

            se (opcads = 1) entao
               nome[cont] <- "VAZIO"
               idade[cont] <- 0
               cargo[cont] <- "VAZIO"
               cpf[cont] <- 0
               limpatela
               cont <- 51
            senao
               cont <- 51
            fimse

         senao
            limpatela
            cont <- cont + 1

         fimse


      ate cont > 50

      cont <- 1

outrocaso
escreval ("")
escreval ("")
escreval ("")
escreval ("                !  !  !      OPÇÃO INVÁLIDA      !  !  ! ")
escreval ("")
escreval ("")
escreval ("")
cont <- 51

   fimescolha
ate (opcao = 5) // Sair do programa

fimalgoritmo
