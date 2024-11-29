algoritmo "SistemaMultiuso"
tipo Aluno = registro
    nome: caractere
    notas: vetor[1..3] de real
    media: real
fimregistro

var
    alunos: vetor[1..5] de Aluno
    n, i, j: inteiro
    operacao: inteiro

// Procedimento para somar dois números
procedimento somar2numeros()
    var
        num1, num2, soma: real
    inicio
        escreva("Digite o primeiro número: ")
        leia(num1)
        escreva("Digite o segundo número: ")
        leia(num2)
        soma <- num1 + num2
        escreval("A soma dos números é: ", soma)
fimprocedimento

// Procedimento para calcular a média aritmética de duas notas
procedimento calcular_media(a: real, b: real, var resultado: real)
    inicio
        resultado <- (a + b) / 2
fimprocedimento

// Procedimento para calcular o quadrado de um número
procedimento calcular_quadrado(numero: inteiro)
    var
        resultado: inteiro
    inicio
        resultado <- numero * numero
        escreval("O quadrado de ", numero, " é: ", resultado)
fimprocedimento

inicio
    escreval("Bem-vindo ao Sistema Multiuso!")
    escreval("Escolha uma operação:")
    escreval("1 - Somar dois números")
    escreval("2 - Calcular quadrado de um número")
    escreval("3 - Cadastrar alunos e calcular médias")
    escreva("Opção: ")
    leia(operacao)

    escolha operacao
    caso 1
        escreva("Quantas vezes deseja repetir a soma? ")
        leia(n)
        para i de 1 ate n faca
            escreval("Execução ", i, " de ", n)
            somar2numeros()
        fimpara
    caso 2
        escreva("Digite um número inteiro: ")
        leia(n)
        calcular_quadrado(n)
    caso 3
        escreval("Cadastro de Alunos:")
        para i de 1 ate 5 faca
            escreva("Digite o nome do aluno ", i, ": ")
            leia(alunos[i].nome)
            para j de 1 ate 3 faca
                escreva("Digite a nota ", j, " do aluno ", alunos[i].nome, ": ")
                leia(alunos[i].notas[j])
            fimpara
            // Calcular a média das notas do aluno
            alunos[i].media <- 0
            para j de 1 ate 3 faca
                alunos[i].media <- alunos[i].media + alunos[i].notas[j]
            fimpara
            alunos[i].media <- alunos[i].media / 3
        fimpara

        // Exibir relatório de alunos
        escreval("\nRelatório de Alunos:")
        para i de 1 ate 5 faca
            escreval("Aluno: ", alunos[i].nome)
            escreval("Média: ", alunos[i].media:0:2)
        fimpara
    caso contrario
        escreval("Opção inválida! Tente novamente.")
    fimescolha

    escreval("\nObrigado por usar o Sistema Multiuso!")
fimalgoritmo

//////////////////////////////////////////////
algoritmo "Soma_Numeros_N_Vezes"
var
    n: inteiro
    i: inteiro
procedimento somar2numeros()
    var 
        num1: real
        num2: real
        soma: real
    inicio
        escreva("Primeiro Num: ")
        leia(num1)
        escreva("Segundo Num: ")
        leia(num2)
        soma <- num1 + num2
        escreval("A soma dos numeros é: ", soma)
fimprocedimento 
inicio
    escreva("quantas vezes quer repetir a operacao soma? ")
    leia(n)
    para i de 1 ate n faca
        escreval("Execucao: ",i," de ", n)
        somar2numeros()
    fimpara
fimalgoritmo
/////////////////////////////////////////////////////////////////////
algoritmo "Soma_Numeros_porChamada"
var
    n : inteiro
    i : inteiro
    num1 : real
    num2 : real
procedimento somarporchamada(num1: real, num2: real)
    var 
        soma: real
    inicio
    soma <- num1 + num2 
    escreval("A soma de ",num1," e ", num2, "é: ", soma)
fimprocedimento
inicio
    escreva("Quantas vezes deseja realizar a operacao soma: ")
    leia(n) 
    para i de 1 ate n faca
        escreval("Execucao ", i," de ", n)
        escreva("Digite o primeiro numero: ")
        leia(num1)
        somarporchamada(num1,num2)// chama o procedimento passando os numeros como argumentos
    fimpara
fimalgoritmo
/////////////////////////////////////////////////////////////////////
algoritmo "calcular_quadrado_porchamada"
var
    n: inteiro
procedimento calcularquadrado(numero:inteiro)
    var
        resultado: inteiro
    inicio
        resultado <- numero * numero
        escreval("O quadrado de ", numero, " é: ", resultado)
fimprocedimento
inicio
    escreva("Digite um numero inteiro: ")
    leia(n)
    calcularquadrado(n)
fimalgoritmo
/////////////////////////////////////////////////////////////////////
algoritmo "calcular_media_aritmetica_porchamda_e_referencia"
var
    num1: real
    num2: real
    media: real
procedimento media_aritmetica(a: real, b: real, var resultado: real)//valores de enrtada n precisa usar var.
    inicio
        resultado  <- (a+b)/2
fimprocedimento
inicio
    escreva("type first number: ")
    leia(num1)
    escreva("type second number: ")
    leia(num2)
    media_aritmetica(num1, num2, media)
    escreval("A media arimetica é: ",media)
fimalgoritmo