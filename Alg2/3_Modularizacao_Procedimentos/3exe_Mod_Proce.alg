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