//Faca um algoritmo que entre como o nome e o valor do cheque do cliente, escreva quanto vai ser recolhido de cpme , considere a taxa de 0,23 
algoritmo "recolhimentoCPME"
var
    nome : caractere
    valorcheque: real
    recolhimento: real
    taxa : real
inicio 
    escreva ("nome do cliente: ")
    leia(nome)
    escreva("digite o valor do cheque dpo cliente: ")
    leia(valorcheque)

    //taxa de 0,23
    escreva("taxa")
    leia(taxa)
    recolhimento<- valorcheque * taxa
    escreva("valor a ser recolhido do CPME é : ", recolhimento)
fimalgoritmo
//Maior numero ou igual
algoritmo "biggernumber_iqual0000"
var
    a : inteiro
    b : inteiro

inicio
    escreva("type number: ")
    leia (a)
    escreva("type number: ")
    leia (b)
    
    se a > b entao
        escreva("a is bigger")
    senao
        se a = b entao
            escreva ("iquals")
        senao
            escreva("b is bigger")
        fimse
    fimse
fimalgoritmo

algoritmo "Nome do Programa"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Descrição   : Quem recebe menos , merece aumento 
var
    empa: caractere
    empb : caractere
    sala : inteiro
    salb : inteiro
inicio
    escreva("Employ: ")
    leia(empa)
    escreva("Salary: ")
    leia(sala)
    escreva("Employ: ")
    leia(empb)
    escreva("Salary: ")
    leia(salb)

    se sala > salb entao
        escreva(ampb, " deserved it !")
    senao
        escreva(ampb, " deserved it !")
    fimse
fimalgoritmo

algoritmo "Reajuste Salarial"
//Reajuste de salario de um funcionario:
//a)para salario < 500, reajuste de 15%
//b)para salario >= 500 mas <= 1000, reajuste de 10%
//c)para salario > 1000, reajuste de 5%
var
    sal: real
    nsal : real
inicio
    escreva("Salary: ")
    leia(sal)

    se sal > 500 entao
        nsal <- (sal * 15) / 100 + sal
    senao 
        se (sal>=500) e (sal <=1000) entao
            nsal <- (sal * 10) / 100 + sal
        senao 
            nsal <- (sal * 5) / 100 + sal
        fimse
    fimse
    escreval("New salary: ", nsal)
fimalgoritmo

algoritmo "Anualy_payment"
//Entre com o número de matrícula de um aluno e faça um Algoritmo que imprima 
//o mês de pagamento da anuidade, utilizando a expressão: Final = id/10,
//sendo que:
//a) Final = 0 - Janeiro.
//b) Final = 1 - Fevereiro.
//c) Final = 2 - Março.
//d) Final = 3 - Abril.
//e) Outro final - Maio.
var
    id: inteiro
    final : real
inicio
    escreva("id number: ")
    leia(id)
    final <- id/10

    se final = 0 entao
        escreva("pay JAN")
    senao 
        se final = 1 entao
            escreva("pay feb")
        senao
            se final = 2 entao
                escreva("pay mar")
            senao
                se final = 3 entao
                    escreva("pay apr")
                senao
                    escreva("pay may")
                fimse
            fimse
        fimse
    fimse
fimalgoritmo

algoritmo "biggernumber_with3"
//Entre com 3 numeros inteiros e calcule o maior numero entre eles:
var
    a: inteiro
    b: inteiro
    c : inteiro
inicio
    escreva("first": )
    leia(a)
    escreva("second: ")
    leia(b)
    escreva("third")
    leia(c)

    se (a>b) e (a>c) entao
        escreva("bigger: ",a)
    senao
        se (a = b) e (b = c) entao
            escreva("iquals")
        senao
            se (b>c) entao
                escreva("bigger: ", b)
            senao
                escreva("bigger: ", c)
            fimse
        fimse
    fimse
fimalgoritmo

algoritmo "calculator1"
var
    numa: real
    numb: real
    result: real
    ope: caractere
inicio
    escreva("Number: ")
    leia(numa)
    escreva("operation: ")
    leia(ope)
    escreva("Number: ")
    leia(numb)

    se ope = "+" entao
        result<- numa + numb
    senao 
        se ope = "-" entao
            result<- numa - numb
        senao
            se ope = "*" entao
                result<- numa * numb 
            senao 
                se ope = "/" entao
                    result<- numa / numb
                fimse
            fimse
        fimse
    fimse
    escreval(numa," ",ope,numb" =",result)  
fimalgoritmo