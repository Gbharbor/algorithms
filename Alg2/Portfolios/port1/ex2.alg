algoritmo "Maior e Menor Nota"
var
   notas : vetor[1..20] de real
   maiorNota, menorNota : real
   i : inteiro
inicio
   // Inicializa maior e menor nota com um valor adequado
   maiorNota <- -9999
   menorNota <- 9999

   // Leitura das 20 notas
   para i de 1 ate 20 passo 1 faca
      escreva("Digite a ", i, "ª nota: ")
      leia(notas[i])

      // Verifica se a nota é maior que a maior encontrada até agora
      se notas[i] > maiorNota então
         maiorNota <- notas[i]
      fimse

      // Verifica se a nota é menor que a menor encontrada até agora
      se notas[i] < menorNota então
         menorNota <- notas[i]
      fimse
   fimpara

   // Exibe a maior e menor nota
   escreva("A maior nota é: ", maiorNota, "\n")
   escreva("A menor nota é: ", menorNota)
fimalgoritmo


//Faça um algoritmo que leia 20 notas de alunos e armazene em um vetor. Feito isso, o algoritmo deve calcular e mostrar a maior e a menor nota informada.
//Suponde que digitou esses valores: 
//Nota 1: 7.5
//Nota 2: 8.2
//Nota 3: 6.0
//Nota 4: 9.0
//Nota 5: 5.5
//a saida sera: 
//A maior nota é: 9.0
//A menor nota é: 5.5

