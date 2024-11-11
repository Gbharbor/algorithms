algoritmo "Maioridade"
var
   idade : inteiro
   maiorIdade, menorIdade : inteiro
   i : inteiro
inicio
   maiorIdade <- 0
   menorIdade <- 0

   para i de 1 ate 20 passo 1 faca
      escreva("Digite a idade da ", i, "ª pessoa: ")
      leia(idade)
      
      se idade >= 18 então
         maiorIdade <- maiorIdade + 1
      senao
         menorIdade <- menorIdade + 1
      fimse
   fimpara

   escreva("Quantidade de pessoas maiores de idade: ", maiorIdade, "\n")
   escreva("Quantidade de pessoas menores de idade: ", menorIdade)
fimalgoritmo
//Faça um algoritmo que leia, em uma estrutura de repetição, a idade de 20 pessoas. Após isso, o algoritmo deve calcular e mostrar a quantidade de pessoas maiores de idade e a quantidade de pessoas menores de idade.
//Se as idades fornecidas forem:
//Idade da 1ª pessoa: 15
//Idade da 2ª pessoa: 22
//Idade da 3ª pessoa: 17
//Idade da 4ª pessoa: 20
//Saida sera assim: 
//Quantidade de pessoas maiores de idade: 12
//Quantidade de pessoas menores de idade: 8

