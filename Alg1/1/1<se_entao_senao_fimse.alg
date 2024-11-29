algoritmo "reajuste salarial"
var 
    sal, nsal: real  
inicio
    escreva ("salary")
    leia (sal)
    se (sal > 500) entao 
        nsal <- (sal * 15) / 100 + sal //reajusta de 15%
    senao 
        se (sal >= 500) e (sal <= 1000) entao 
            nsal <- (sal * 10) / 100 + sal //reajusta de 10%
        senao
            nsal <- (sal * 5) / 100 + sal  //reajusta de 5%
        fimse
    fimse
    escreval("New Salary: ", nsal)
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "pagamento_anual"
var
    id, final : inteiro
inicio
    escreva ("ID number")
    leia (id)
    final <- id mod 10 //random rule (inteiros)
    se final = 0 entao 
        escreva("PAY JAN")
    senao 
        se final = 1 entao 
            escreva("pay FEB")
        senao
            escreva ("PAY MAR")
        fimse
    fimse
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "maior ou igual num entre 3"
var
    a , b , c : inteiro
inicio
    escreva("first")
    leia(a)
    escreva("second")
    leia(b)
    escreva("third")
    leia(c)
    se (a > b) e (a > c) entao 
        escreva("bigger: ", a)
    senao 
        se (a == b) e (b == c) entao
            escreva("iguais")
        senao
            se (b > c) entao  
                escreva("bigger: ", b)
            senao
                escreva ("bigger: ", c)
            fimse
        fimse
    fimse
fimalgoritmo   
/////////////////////////////////////////////////
algoritmo "calculater 1"
var
    numa, numb, result : real
    ope : caractere
inicio
    escreva ("Number: ")
    leia(numa)
    escreva("operator")
    leia(ope)
    escreva ("Number: ")
    leia(numb)
    se ope = "+" entao 
        result <- numa + numb 
    senao 
        se ope = "-" entao
            result <- numa - numb
        senao
            se ope = "*" entao
                result <- numa * numb
            senao 
                se ope = "/" entao
                    result <- numa / numb
                fimse
            fimse
        fimse
    fimse
    escreval(numa" ",ope," ",numb " = ", result)
fimalgoritmo