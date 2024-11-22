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
/////////////////////////////////////////////////////////////////////////////////////
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
///////////////////////////////////////////////////////////////////
algoritmo "fibonacci iterativo"
var
    numero, resultado : inteiro
funcao fibonacci(n: inteiro):inteiro
    var
        a,b,temp,i : inteiro
        a <- 0 //F(n-2)=0
        b <- 1 //F(n-1)=1
        se n = 0 entao 
            retorne a //F(0)=0
        fimse
        para i de 2 ate n faca //F([2,3...n])
            temp <- a + b //temp <- (F(n-2) + F(n-1)) = b 
            a <- b
            b <- temp
        fimpara
        retorne b //o ultimo valor calculado e fibonacci(n)
fimfuncao
inicio
    escreva("Digite um número para calcular Fibonacci: ")
    leia(numero)
    se numero < 0 entao 
        escreval("somente numeros positivos.")
        interrompa
    fimse
    resultado <- fibonacci(numero)
    escreval("o fibonacci de ", numero , " é: ", resultado)
fimalgoritmo
///////////////////////////////////////////////////////////////////
algoritmo "fibonacci recursivo"
var
    numero, resultado: inteiro
funcao fibanacci(n: inteiro): inteiro
    var
        se n = 0 entao 
            returne 0 //condicao base, para n criar um loop infinito
        senao
            se n = 1 entao 
                retorne 1 // condicao base 
            senao
                retorne fibonacci(n-1)+fibonacci(n-2)//chamada recursiva (chamando a funcao dentro da propria funcao)
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