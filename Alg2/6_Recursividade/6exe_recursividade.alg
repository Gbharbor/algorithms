//recursividade so funciona em funcoes, pq e obrigado a devolver um resoltado
algoritmo "calcular fatorial iterativa" // iterativa seria as funcoes "normais"
var
    numero, resultado : inteiro
funcao fatorial(n: inteiro): inteiro
    var 
        i, fat: inteiro
        fat <- 1 // inicializa o fatorial como 1
        para i de 1 ate n faca
            fat <- fat * i 
        fimpara
        retorne fat // retorna o resultado final 
fimfuncao
inicio 
    escreva("digite um numero para calcular o fatorial: ")
    leia(numero)

    se numero < 0 entao
        escreval("fatorial nao e dfeinido para numeros negativos.")
        interrompa //termina o programa para entradas invalidas
    fimse
    resultado <- fatorial(numero) //chama a funcao fatorial e armazena o resultado
    escreval("o fatorial de ", numero, " é: ", resultado)
fimalgoritmo
//==================================================================//
algoritmo "calcular fatorial usando recursividade"
var
    numero, resultado : inteiro
funcao fatorial(n: inteiro): inteiro // a funcao e recursiva quando ela chama a si mesma diretamente ou indiretamente, ha uma condicao basica que interrompe as chamadas 
    se n = 0 entao //isso impede que tenha chamadas infinitas(e mais logico em recursividade)
        retorne 1//o fatorial de 0 é 1
    senao
        retorne n * fatorial(n - 1)//chamada recursiva p/ calcular o fatorial (esta chamando a si mesma, dentro da funcao)
    fimse
fimfuncao
inicio
    escreva("digite o numero q calcular o fatorial: ")
    leia(numero)
    se numero < 0 entao 
        escreva("fatorial n e definido para numeros negativos.")
        interrompa
    fimse
    se numero > 15 entao 
        escreval("numero muito grande, a recursao pode falhar para valores maiores que 15.")
        interrompa
    fimse
    resultado <- fatorial(numero)
    escreval("o fatorial é: ", numero, "é: ", resultado)
fimalgoritmo
//==================================================================//
algoritmo "fibonacci iterativo"
var
    numero, resultado : inteiro
funcao fibonacci(n: inteiro): inteiro
    var
        a, b, temp, i : inteiro
    inicio
        a <- 0 // F(0) = 0
        b <- 1 // F(1) = 1
        se n = 0 entao
            retorne a
        fimse
        para i de 2 ate n faca
            temp <- a + b // Calcula o próximo número na sequência
            a <- b
            b <- temp
        fimpara
        retorne b // Retorna o valor calculado para Fibonacci(n)
fimfuncao
inicio
    escreva("Digite um número para calcular Fibonacci: ")
    leia(numero)
    se numero < 0 entao
        escreval("Somente números positivos são permitidos.")
    senao
        resultado <- fibonacci(numero)
        escreval("O Fibonacci de ", numero, " é: ", resultado)
    fimse
fimalgoritmo
//==================================================================//
algoritmo "fibonacci_recursivo"
var
    numero, resultado: inteiro
funcao fibonacci(n: inteiro): inteiro
    inicio
        se n = 0 entao
            retorne 0 // Condição base: Fibonacci(0) = 0
        senao
            se n = 1 entao
                retorne 1 // Condição base: Fibonacci(1) = 1
            senao
                retorne fibonacci(n-1) + fibonacci(n-2) // Chamada recursiva
            fimse
        fimse
fimfuncao
inicio
    escreva("escreva um numero para calcular o fibonacci: ")
    leia(numerio)
    se numero < 0 entao 
        escreval("fibonacci nao e definida para numeros negativos.")
        interrompa
    fimse
    se numero > 20 entao 
        escreval("numero muito grande, pode causar problema de desenpenho.")
    fimse
    resultado <- fibonacci(numero)
    escreval("o fibonacci de ",numero, "é: ",resultado)
fimalgoritmo
//==================================================================//
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
    resultado <- soma(n1, n2) //chamo a funcao recursiva
    escreva("A soma de ",n1 " e ", n2, "é: ",resultado)
fimalgoritmo
//==================================================================
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
        resultado <- multiplicacao (n1, n2)
        escreva("O produto de ", n1, " e ", n2, " é: ", resultado)
    senao
        escreva("Deve ser numeros naturais(maiores que zero)")
    fimse
fimalgoritmo