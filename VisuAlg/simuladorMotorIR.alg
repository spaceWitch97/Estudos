algoritmo "semnome"

var
motordc_right : inteiro
motordc_left : inteiro
ir1 : inteiro
ir2 : inteiro
cont : inteiro

inicio

ir1 <- 0
ir2 <- 0
cont <- 0

repita
   leia (ir1)
   leia (ir2)
   se (ir1 = 0) e (ir2 = 0) entao
      motordc_right <- 40
      motordc_left <- 40
      escreval ("Robô em movimento")
   senao
      se (ir1 = 0) e (ir2 = 1) entao
         motordc_right <- 0
         motordc_left <- 40
         escreval ("Robô à direita")
      senao
         se (ir1 = 1) e (ir2 = 0) entao
            motordc_right <- 40
            motordc_left <- 0
            escreval ("Robô à esquerda")
         senao
            se (ir1 = 1) e (ir2 = 1) entao
               motordc_right <- 0
               motordc_left <- 0
               escreval ("Robô parado")
            fimse
         fimse
      fimse
   fimse
   cont <- (cont + 1)
ate cont = 6

fimalgoritmo
