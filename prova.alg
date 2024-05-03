//Algoritmo , utilizando a estrutura de repetuicao para calcular ops 10 primeiuros termos de serie : soma = 1/1 + 1/2 + 1/3 ... + 1/10
algoritmo "calc10tewrmos"
var 
    soma : real 
    i : inteiro
inicio
    soma <- 0
    para i de 1 ate 10 faca 
        soma <- soma  + 1/i
    fimpara
    escreva("a soma dos 10 primeiros termos é: ",soma)
fimalgoritmo

//Faca um algoritmo que entre como o nome e o valor do cheque do cliente, escreva quanto vai ser recolhido de cpme , considere a taxa de 0,23 
algoritmo "recolhimentoCPME"
var
    nome : caractere
    valorcheque: real
    recolhimento: real
    taxa : real
inicio 
    escreva ("nome do cliente: ")
    leia(nome)
    escreva("digite o valor do cheque dpo cliente: ")
    leia(valorcheque)

    //taxa de 0,23
    escreva("taxa")
    leia(taxa)
    recolhimento<- valorcheque * taxa
    escreva("valor a ser recolhido do CPME é : ", recolhimento)
fimalgoritmo

algoritmo "contagem"
var
    n : inteiro
    name: vetor [1..10] de caractere
inicio
    n<-1
    escreva("ensira um nome")
    repita

    ate ((name[n-1]=".")ou(n=11))
    escreva(name[2])
fimalgoritmo

algoritmo "notas_alunos"
var
    socre : vetor[1..4] de real
    media, sum, low, high : real
    qty : inteiro
inicio
    sum <- 0
    low <- 10
    high <- 0

    para qty de 1 ate 4 passo 1 faca
        escreval("nota:")
        leia(score[qty])
        sum <- sum + score[qty]

        se score[qty] < low entao
            low <- score[qty]
        fimse
        se score[qty] > high entao
            high <- score[qty]
        fimse
    fimpara
    media <- sum/qty
    escreval("media: ", media)
    escreval("high: ", high)
    escreval("low: ", low)
fimalgoritmo