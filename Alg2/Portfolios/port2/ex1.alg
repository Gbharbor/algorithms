algoritmo "Dados do Estudante"
tipo Estudante = registro
      nome : caractere
      idade : inteiro
      sexo : caractere
      matricula : inteiro
      curso : caractere
   fimregistro
var
   estudante : Estudante
inicio
   // Predefinindo os valores
   estudante.nome <- "Guilherme Porto"
   estudante.idade <- 26
   estudante.sexo <- "M"
   estudante.matricula <- 123.1885
   estudante.curso <- "Engenharia de Software"

   // Exibe o nome e se é maior ou menor de idade
   escreva("Nome: ", estudante.nome, "\n")
   
   se estudante.idade >= 18 então
      escreva("O estudante é maior de idade.")
   senao
      escreva("O estudante é menor de idade.")
   fimse
fimalgoritmo

//Faça um algoritmo que leia os dados de um estudante, armazenando-os em um registro, de modo que um estudante possua as seguintes informações:
//Nome;
//Idade;
//Sexo;
//Número de matrícula; 
//Nome do curso;
//Após a leitura, o algoritmo deverá apresentar o seu nome e se é menor ou maior de idade.