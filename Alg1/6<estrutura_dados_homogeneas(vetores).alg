algoritmo "contador"
var 
    n : inteiro
inicio
    para n de 0 ate 99 passo 1 faca 
        escreval(n)
    fimpara
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "numeros_pares"
var 
    n : inteiro
inicio
    para n de 0 ate 100 passo 2 faca 
        escreval(n)
    fimpara 
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "tabuada"
var
    valor, contador : inteiro
inicio 
    escreva("informe o valor desejado: ")
    leia(valor)

    para contador de 1 ate 10 passo 1 faca
        escreval(valor," x ", contador," = ",(valor * contador))
    fimpara
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "potencia"
var
    x, y, z : inteiro
inicio
    x <- 3 //base da pontencia
    para z de 0 ate 10 passo 1 faca 
        se z = 0 entao 
            y<-1
        senao
            y<-  x ^ z
        fimse
        escreval(x,"^",z,"=",y)
    fimpara
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "calcular 10 termos fracionarios1/1"
var
    soma: real
    i : inteiro
inicio
    soma <- 0 
    para i de 1 ate 10 faca
        soma <- soma + 1/(real(i)) //garante divisao real
    fimpara
    escreva("a soma dos 10 primeiros termos é: ",soma)
fimalgoritmo