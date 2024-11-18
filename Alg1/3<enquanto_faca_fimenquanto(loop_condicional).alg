algoritmo "repeticao de 0 a 100"
var
    n : inteiro
inicio
    n <- 0
    enquanto n < 100 faca 
        n <- n+1
        escreval(n)
    fimenquanto
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "soma positivos pares"
var
    sum, n : inteiro
inicio
    n <- 2
    sum <- 0
    enquanto n < 100 faca 
        sum <- sum + n // 2
        n <- n + 2  //4 ...
    fimenquanto
    escreval("A soma dos numeros pares inteiro é: ", sum)//2450
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "repetir HELLO"
var
    n : inteiro
inicio
    n <- 1
    enquanto n <= 10 faca
        escreval("HELLO")
        n <- n + 1
    fimenquanto
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "tabela de multiplicacao"
var
    valor, contador : inteiro 
inicio
    escreva ("Multiplicar: ")
    leia(valor)
    contador <- 1
    enquanto contador <= 10 faca
        escreval(valor," x ",contador," = ",(valor*contador))
        contador <- contador + 1
    fimenquanto
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "Type 10 numbers & sum only positives numbers"
var
    n, sumpositivo, contador : inteiro 
inicio
    sumpositivo <- 0
    contador <- 1
    enquanto contador <=10 faca 
        escreva("digite os numeros: ", contador)
        leia(n)
        se n > 0 entao
            sumpositivo <- sumpositivo + n 
        fimse
    fimenquanto
    escreva("a soma dos numeros positivos: ", sumpositivo)
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "fatorial"
var
    contador, fat, fatorial: inteiro
inicio
    escreva("informe o numero para calcular o fatorial: ")
    leia(fatorial) //5
    fat <- 1
    contador <- fatorial 
    enquanto (contador > 1) faca 
        fat <- fat * contador // 1*5=5,5*4=20,20*3=60...
        contador <- contador - 1 //5-1 -> 4, 4-1=3...
    fimenquanto
    escreva("o valor do fatorial é: ", fat)
fimalgoritmo