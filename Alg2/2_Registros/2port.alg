algoritmo "dados do estudante"
    tipo estudante = registro
        nome: caractere
        idade: inteiro
        sexo: caractere
        matricula: inteiro
        curso: caractere
    fimregistro
var
    estudante: estudante
inicio
    //valor pre definidos:
    estudante.nome <- "gui porto"
    estudante.idade <- 26
    estudante.sexo <- "M"
    estudante.matricula <- 123.1885
    estudante.curso <- "Engenharia de Software"
    escreval("Nome: ", estudante.nome)
    se estudante.idade >= 18 
        escreva("Maior de idade.")
    senao 
        escreva("Menor de idade.")
    fimse
fimalgoritmo
////////////////////////////////////////////////////////
algoritmo "estudantes acima de 30 anos"
    tipo estudante = registro
        nome: caractere
        idade: inteiro
        sexo: caractere
        matricula: inteiro
        curso: caractere
    fimregistro
var
    estudantes: vetor[1..10] de estudantes
    i: inteiro
inicio
    para i de 1 ate 10 passo 1 faca
        escreval("Digite o nome do estudante ", i, ": ")
        leia(estudantes[i].nome)
        escreval("Digite a idade do estudante ", i, ": ")
        leia(estudantes[i].idade)
        escreval("Digite o sexo do estudante ", i, " (M/F):")
        leia(estudantes[i].sexo)
        escreval("Digite o número de matrícula do estudante ", i, ":")
        leia(estudantes[i].matricula)
        escreval("Digite o nome do curso do estudante ", i, ": ")
        leia(estudantes[i].curso)
    fimpara
    escreval("Estudantes com mais de 30 anos: ")
    para i de 1 ate 10 passo 1 faca
        se estudantes[i].idade > 30 entao 
            escreva("Nome: ", estudantes[i].nome)
            escreva("Curso: ", estudantes[i].curso)
        fimse
    fimpara
fimalgoritmo