algoritmo "calculator"
var
    numa: real
    numb: real
    result: real
    ope: caractere
inicio
    escreva("number:")
    leia(numa)
    escreva("operacao:")
    leia(ope)
    escreva("numb")
    leia(numb)

    escolha ope 
        caso "+"
            result <- numa + numb
        caso "-"
            result <- numa - numb
        caso "*"
            result <- numa * numb
        caso "/"
            result <- numa / numb
        outrocaso
            escreva("ERROR")
    fimescolha
    escreval(numa," ",ope,numb,"=",result)
fimalgoritmo