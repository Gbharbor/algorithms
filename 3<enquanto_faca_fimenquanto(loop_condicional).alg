//Escreva os numeros inteiros positivos menores que 100.
algoritmo "repeticao1"
var
    n : inteiro
inicio
    n <- 0
    enquanto n < 100 faca
        n <- n + 1
        escreval (n)
    fimenquanto
fimalgoritmo

//Mostrar a soma dos numeros pares inteiros positivos menores que 100:
algoritmo "somapositivo_pares"
var
    sum : inteiro
    n : inteiro
inicio 
    n <- 2
    sum <- 0

    enquanto n < 100 faca
        sum <- sum + n
        n <- n + 2
    fimenquanto
    escreval("A soma dos numeros pares inteiros e: ",sum)
fimalgoritmo

//Segue um algoritmo que escreva 10vezes a frase "GREMIO". Confira:
algoritmo "repeticao"
var
    n : inteiro
inicio
    n <- 1

    enquanto n <= 10 faca
        escreval(n," gremio")
        n <- n + 1
    fimenquanto
fimalgoritmo

//O algoritmo lerá um número inteiro positivo, calculará e imprimirá a tabuada desse número de 1 a 10. Por exemplo, se o valor inserido for 2, ele imprimirá a tabuada do 2.
algoritmo "multiplication_table"
var
    value : inteiro
    couter : inteiro
inicio
    escreva("multiplication")
    leia(value)

    couter <- 1 

    enquanto couter <= 10 faca
        escreval(value,"x",couter,"=",(value * couter))
        couter <- couter + 1
    fimenquanto
fimalgoritmo

//Soma de numeros positivos com se/senao dentro do enquanto
algoritmo "Nome do Programa"
var
    n: inteiro
    sumpositive: inteiro
    couter: inteiro
inicio
    sumpositive <- 0
    couter <- 1 

    enquanto couter <= 10 faca
        escreva("Digite o numero: ",couter)
        leia(n)
        se n > 0 entao
            sumpositive<- sumpositive + n
        fimse
        couter<- couter + 1
    fimenquanto

    escreva("a soma dos numeros positivos: ", sumpositive)
fimalgoritmo

//Elaborar um algoritmo que efetua o calculo do fatorial de um numero sendo o fatorial de um numero calculado da seguinte forma: 5! = 5*4*3*2*1 = 120
algoritmo "fatorial"
var
    count: inteiro
    fat: inteiro
    fatorial: inteiro
inicio
    escreva("Informa o fatorial que quer calcular: ")
    leia(fat)

    fatorial <- fat
    count <- 1 

    enquanto  (count<fatorial) faca
        fat <- fat * count
        count <- count + 1
    fimenquanto
    escreva ("o valor do fatorial e: ", fat)
fimalgoritmo