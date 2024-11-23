algoritmo "soma com incremento recursivo"
funcao recursiva soma(n1:inteiro, n2: inteiro): inteiro
    se (n2 = 0) entao 
        retorne n1 
    senao
        retorne soma(n1 + 1, n2 - 1)// aumentando `n1` e diminuindo `n2` até que `n2` seja zero.
    fimse
fimfuncao
var
    n1: inteiro
    n2: inteiro
    resultado: inteiro
inicio
    escreva("digite o primeiro numero: ")
    leia(n1)
    escreva("digite o segundo numero: ")
    leia(n2)
    resultado := soma(n1, n2) //chamo a funcao recursiva
    escreva("A soma de ",n1 " e ", n2, "é: ",resultado)
fimalgoritmo
/////////////////////////////////////////////////////////////////////
//Esse algoritmo simula a multiplicação de forma recursiva, usando apenas operações de soma.
algoritmo "multiplicacao com soma recursiva"
funcao multiplicacao(n1, n2: inteiro): inteiro
    se (n2=0) entao 
        retorne 0
    senao
        retorne n1 + multiplicacao(n1, n2 - 1)
    fimse
fimfuncao
var
    n1, n2, resultado: inteiro
inicio
    Escreva("Digite o primeiro número natural: ")
    Leia(n1)
    Escreva("Digite o segundo número natural: ")
    Leia(n2)
    //validacao p/ numeros naturais
    se (n1 >= 0) e (n2 >= 0) entao 
        resultado := multiplicacao (n1, n2)
        escreva("O produto de ", n1, " e ", n2, " é: ", resultado)
    senao
        escreva("Deve ser numeros naturais(maiores que zero)")
    fimse
fimalgoritmo