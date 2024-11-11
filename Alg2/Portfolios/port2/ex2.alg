algoritmo "Estudantes Acima de 30 Anos"
tipo Estudante = registro
      nome : caractere
      idade : inteiro
      sexo : caractere
      matricula : inteiro
      curso : caractere
   fimregistro
var
   estudantes : vetor[1..10] de Estudante
   i : inteiro
inicio
   // Leitura dos dados dos 10 estudantes
   para i de 1 ate 10 passo 1 faca
      escreva("Digite o nome do estudante ", i, ": ")
      leia(estudantes[i].nome)
      escreva("Digite a idade do estudante ", i, ": ")
      leia(estudantes[i].idade)
      escreva("Digite o sexo do estudante ", i, " (M/F): ")
      leia(estudantes[i].sexo)
      escreva("Digite o número de matrícula do estudante ", i, ": ")
      leia(estudantes[i].matricula)
      escreva("Digite o nome do curso do estudante ", i, ": ")
      leia(estudantes[i].curso)
   fimpara
   // Exibição dos estudantes com idade acima de 30 anos
   escreva("\nEstudantes com mais de 30 anos:\n")
   para i de 1 ate 10 passo 1 faca
      se estudantes[i].idade > 30 então
         escreva("Nome: ", estudantes[i].nome, "\n")
         escreva("Curso: ", estudantes[i].curso, "\n\n")
      fimse
   fimpara
fimalgoritmo

//Faça um algoritmo que leia os dados de 10 estudantes (referenciados por um vetor da mesma estrutura do registro do exercício anterior). A seguir, o algoritmo deve apresentar o nome e o curso dos estudantes com idade acima de 30 anos.
//Digite o nome do estudante 1: João Silva
//Digite a idade do estudante 1: 35
//Digite o sexo do estudante 1 (M/F): M
//Digite o número de matrícula do estudante 1: 12345
//Digite o nome do curso do estudante 1: Matemática

//Digite o nome do estudante 2: Maria Souza
//Digite a idade do estudante 2: 28
//Digite o sexo do estudante 2 (M/F): F
//Digite o número de matrícula do estudante 2: 12346
//Digite o nome do curso do estudante 2: Física

//...
//(continuar para 10 estudantes)

//Estudantes com mais de 30 anos:
//Nome: João Silva
//Curso: Matemática
//...