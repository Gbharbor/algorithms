algoritmo "calcular_quadrado"
var
n: inteiro
procedimento calcularquadrado(numero:inteiro)
    var
        resultado: inteiro
    inicio
        resultado <- numero * numero
        escreval("o quadrado de ", numero, " é: ", resultado)
fimprocedimento
inicio
    escreva("Digite um numero inteiro: ")
    leia(n)
    calcularquadrado(n)
fimalgoritmo
///////////////////////////////////////////////////////////
algoritmo "Calcular_Media_aritmetica"
var
    num1: real
    num2: real
    media: real
    //Recebe três parâmetros: `a` e `b` (os números para calcular a média) e `resultado` (por referência), onde a média será armazenada.
procedimento media_aritmetica(a: real, b:real, var resultado: real)
    inicio
        resultado <- (a + b) / 2
fimprocedimento
inicio
    escreva("digite o primeiro numero: ")
    leia(num1)
    escreva("digite o segundo numero: ")
    leia(num2)
    media_aritmetica(num1, num2, media)
    escreval("A media aritmetica de ", num1," e ",num2 " é: ", media)
fimalgoritmo