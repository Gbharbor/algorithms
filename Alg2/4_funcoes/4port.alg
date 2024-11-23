algoritmo "calcular_cubo"
var
    n: inteiro
    resultado: inteiro
funcao calcular_cubo(numero: inteiro) : inteiro
    inicio
        retorne numero * numero * numero
fimfuncao
inicio
    escreva("Digite o numero que quer elevar ao cubo: ")
    leia(n)
    resultado <- calcular_cubo(n)
    escreval("O cubo de ",n, " é: ", resultado)
fimalgoritmo
//////////////////////////////////////////////////////////
algoritmo "converter km para milhas"
var
    km: real
    milhas: real
funcao converter_para_milhas(km: real):real
inicio
    retorne km * 0.62 //taxa de conversão de km => milhas.
fimfuncao
inicio
    escreva("digite o valor em km: ")
    leia(km)
    milhas <- converter_para_milhas(km)
    escreval(km, "km equivale a ",milhas," milhas.")   
fimalgoritmo