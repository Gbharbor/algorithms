algoritmo "Dados do Aluno com Vetor"
tipo Aluno = registro
      nome : caractere
   fimregistro

var
   aluno : Aluno
   notas : vetor[1..4] de real
   i : inteiro
inicio
   // Leitura do nome do aluno
   escreva("Digite o nome do aluno: ")
   leia(aluno.nome)

   // Leitura das notas dos 4 bimestres
   para i de 1 ate 4 passo 1 faca
      escreva("Digite a nota do ", i, "º bimestre: ")
      leia(notas[i])
   fimpara

   // Exibição dos dados do aluno
   escreva("\nDados do Aluno:\n")
   escreva("Nome: ", aluno.nome, "\n")
   escreva("Notas:\n")
   para i de 1 ate 4 passo 1 faca
      escreva("Bimestre ", i, ": ", notas[i], "\n")
   fimpara
fimalgoritmo

fimalgoritmo
//Escreva um algoritmo que escreva e leia os dados de um aluno. Um aluno e identificado pelo seu nome alem das notas de seus 4 bimestres.
//Digite o nome do aluno: João Silva
//Digite a nota do 1º bimestre: 7.5
//Digite a nota do 2º bimestre: 8.0
//Digite a nota do 3º bimestre: 6.5
//Digite a nota do 4º bimestre: 9.0
//Dados do Aluno:
//Nome: João Silva
//Notas:
//Bimestre 1: 7.5
//Bimestre 2: 8.0
//Bimestre 3: 6.5
//Bimestre 4: 9.0

