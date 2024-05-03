//Faca um algoritmo que escreva os valores inteiros positivos menores que 100:
algoritmo "contador"
var
    n : inteiro
inicio
    para n de 0 ate 99 passo 1 faca
        escreval(n)
    fimpara
fimalgoritmo

//Escreva os numeros inteiros positivos menores que 100, use o contador pule de 2 em 2, no incremento da variavel.
algoritmo "numeros_pares"
var
    n : inteiro
inicio
    para n de 0 ate 100 passo 2 faca
        escreval(n)
    fimpara
fimalgoritmo

//Tabuada.
algoritmo "tabuada"
var
    value: inteiro
    couter: inteiro
inicio 
    escreva("informe o valor desejado: ")
    leia(value)

    para couter de 1 ate 10 passo 1 faca 
        escreval(value," x",couter," =",(value * couter))
    fimpara
fimalgoritmo

//Faca um algoritmo para aprensentar os resultador da potencia de 3 variando o expoente de 0 ate 10. Deve ser considerado que qualquer numero elevado a zero é 1, e elevado a 1 é ele mesmo .Deve ser apresentado observando, a seguinte definicao.
algoritmo "potencia"
var
    x: inteiro
    y: inteiro
    z: inteiro
inicio
    x<- 3 //aqui escolhe a potencia q queira
    y<- 1
    para z de 0 ate 10 passo 1 faca
        se z= 0 entao
            y <- 1
        senao
            y <- y * x
        fimse
        escreval(x,"^",z,"=",y)
    fimpara
fimalgoritmo

//Todos valores pares no intervalo de 0 a 20
algoritmo "pares_ate20"
var
    n: inteiro
inicio
    para n de 0 ate 20 passo 2 faca
        escreval(n)
    fimpara
fimalgoritmo