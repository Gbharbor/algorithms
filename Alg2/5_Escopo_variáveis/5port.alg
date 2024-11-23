algoritmo "calcularIMC"
var
    peso: real
    altura: real
    imc: real //var global
procedimento calcular_imc(peso: real, altura:real)
    inicio
        imc <- peso / (altura * altura) // IMC = peso/(altura^2)
fimprocedimento
inicio
    escreva("Digite seu peso: ")
    leia(peso)
    escreva("Digite sua altura: ")
    leia(altura)
    calcular_imc(peso, altura)
    escreval("Seu IMC é: ",imc)
fimalgoritmo
//////////////////////////////////////////////////////////
algoritmo "soma_entre_numeros"
var
    num1: inteiro
    num2: inteiro
    soma: inteiro //var global
procedimento soma_entre_numeros(a: inteiro, b: inteiro)
    var 
        i: inteiro
    inicio
        soma <- 0 //inicializa a soma
        para i de a + 1 ate b - 1 faca // exe={3,7} => loop={4..6}
            soma <- soma + i // (0+4=4)+(4+5=9)+(9+6=15)
        fimpara
fimprocedimento
inicio
    escreva("Digite o primeiro número positivo: ")
    leia(num1)
    escreva("Digite o segundo número positivo: ")
    leia(num2)
    //verificar se os numeros sao positivos e se o primeiro e menor que o segundo.
    se (num1 > 0) e (num2 > 0) e (num1 < num2) entao 
        soma_entre_numeros(num1,num2) //a,b => exe={3,7}
        escreval("A soma dos numeros entre ",num1, " e ", num2," é: ", soma)//15
    senao
        escreval("Apenas valores positivos, e o primeiro numero deve ser menor que o segundo! ")
    fimse
fimalgoritmo