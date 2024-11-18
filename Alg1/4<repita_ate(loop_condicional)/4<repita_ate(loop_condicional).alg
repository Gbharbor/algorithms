algoritmo "repita_ate_100"
var 
    n : inteiro
inicio
    n <- 0
    repita 
        escreval(n)
        n <- n + 1
    ate n > 100
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "soma_inteiro_positivo_ate_100"
var
    sum, n : inteiro 
inicio
    n <- 2
    sum <- 0
    repita
        sum <- sum + n 
        n <- n + 2
    ate n > 100
    escreva("a soma dos num pares ate 100 é: ", sum)
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "repetir_um_caractere"
var
    n : inteiro
inicio
    n <- 1
    repita
        escreval(n, "HELLO!")
        n <- n + 1
    ate n > 10
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "tabuada"
var
    valor, contador : inteiro
inicio
    escreva("tabuada do : ")
    leia(valor)
    contador <- 1 
    repita 
        escreval(valor," x ",contador," = ",(valor * contador))
        contador <- contador + 1
    ate contador > 10
fimalgoritmo