algoritmo "calc_escolha"
var
    numa, numb, result : real 
    ope: caractere
inicio
    escreva("number: ")
    leia(numa)
    escreva ("operacao: ")
    leia(ope)
    escreva("number: ")
    leia (numb)
    escolha ope 
        caso "+"
            result <- numa + numb 
        caso "-"
            result <- numa - numb
        caso "*"
            result <- numa * numb
        caso "/"
            se numb = 0 entao
                escreva("erro: divisao por zero")
            senao
            result <- numa / numb
        outrocaso
            escreva ("Erro: operador invalido")
            result <- 0 //valor padrao para evitar erros
    fimescolha
    se ope = "+" ou ope = "-" ou ope = "*" ou (ope = "/" e numb <> 0) entao 
        escreval(numa, " ", ope, numb, " = ", result)
    fimse
fimalgoritmo