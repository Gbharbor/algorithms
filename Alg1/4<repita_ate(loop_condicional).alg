//Faca um algoritmo que escreva os numeros inteiros positivos menores que 100:
algoritmo "repitaate"
var
    n : inteiro
inicio
    n <- 0
    repita
        escreval(n)
        n <- n + 1
    ate n > 100
fimalgoritmo

//Mostrar a soma dos numeros pares inteiros positivos menores que 100
algoritmo "inteiro_positivo"
var
    sum: inteiro
    n: inteiro
inicio
    n <- 2
    sum <- 0
    repita 
        sum <- sum + n
        n <- n + 2
    ate n = 100//nesse caso so igualando a 100 pore ser par, ja e o suficiente para fazer as somas necessarias, sem precisar dizer q n precisa ser maior que 100
    escreva("a soma dos numeros pares inteiros menores q 100: ", sum)
fimalgoritmo

//Segue um algoritmo que repita gremio 10x
algoritmo "repeticao"
var
    n : inteiro
inicio 
    n<- 1 
    repita
        escreval(n," gremio")
        n<- n + 1
    ate n >= 10
fimalgoritmo

//Faca um algoritmo que leia um numero inteiro positivo e apresente o resultado de sua tabuada de um a dez.
algoritmo "multiplication_table"
var
    value: inteiro
    couter: inteiro
inicio 
    escreva("multiplication: ")
    leia(value)
    couter<-1

    repita 
        escreval(value,"x",couter,"=",(value * couter))
        couter <- couter + 1
    ate couter > 10
fimalgoritmo