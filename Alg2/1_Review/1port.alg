algoritmo "maioridade"
var
    idade: inteiro
    maior: inteiro
    menor: inteiro
    i : inteiro
inicio
    maior <- 0
    menor <- 0
    para i de 1 ate 20 passo 1 faca
        escreva("digite a idade da ",i,"pessoa: ")
        leia(idade)
        se idade >= 18 entao 
            maior <- maior + 1
        senao
            menor <- menor + 1
        fimse
    fimpara
    escreval("quandidade de pessoas maiores de idade: ", maior)
    escreval("quandidade de pessoas menores de idade: ", menor)
fimalgoritmo
////////////////////////////////////////////////////////////
algoritmo "maior e menor nota"
var
    notas: vetor[1..10] de real
    maior: real 
    menor: real
    i: inteiro
inicio
    maior <- -9999 //para garantir que o valor seja maior.
    menor <- 9999 //para garantir que o valor seja menor.
    para i de 1 ate 10 passo 1 faca
        escreva("digite a ",i,"nota: ")
        leia(notas[i])
        se notas[i] > maior entao 
            maior <- notas[i]
        fimse
        se notas[i] < menor entao 
            menor <- notas[i]
        fimse
    fimpara
    escreva("a maior nota é: ", maior)
    escreva("a menor nota é: ", menor)
fimalgoritmo