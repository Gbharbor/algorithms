algoritmo "multiplicar matriz"
var
    mat : vetor [1..5,1..5] de inteiro
    x,L,C : inteiro
inicio
    escreval("digite os elementos da matriz 5x5: ")
    para L de 1 ate 5 faca 
        para C de 1 ate 5 faca
            escreva("Valrores [",L,"][",C,"]: ")
            leia (mat[L,C])
        fimpara
    fimpara
    escreva("Multiplicar matriz por: ")
    leia(x)
    escreva("Matriz multiplicada por ", x," : ")
    para L de 1 ate 5 faca
        para C de 1 ate 5 faca
            escreva(mat(L,C) * x, " ")
        fimpara
        escreval(" ")//new line
    fimpara
fimalgoritmo
/////////////////////////////////////////////////
algoritmo "soma diagonal principal"
var
    mat : vetor [1..5,1..5]
    somaD, L, C : inteiro
inicio
    escreval("Digite os elementos da matriz: ")
    para L de 1 ate 5 faca 
        para C de 1 ate 5 faca
            escreva("Valores[",L,"][",C,"]: ")
            leia(mat[L,C])
        fimpara
    fimpara
    escreval("Matriz digitada: ")
    para L de 1 ate 5 faca
        para C de 1 ate 5 faca
            escreva(mat[L,C]," ")//space behind numbers
        fimpara
        escreval(" ")
    fimpara
    somaD <- 0
    para L de 1 ate 5 faca
        somaD <- somaD + mat [L,L] //line & collum iquals ([1][1], [2][2], [3][3])
    fimpara
    escreval("soma da diagonal principal: ", somaD)
fimalgoritmo