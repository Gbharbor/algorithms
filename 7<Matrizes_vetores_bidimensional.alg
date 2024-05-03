//Faça um algoritmo para ler uma matriz 5x5 de números inteiros e ler um número inteiro x. A seguir, o algoritmo deve multiplicar todos os elementos da matriz por x e exibir a matriz modificada.
algoritmo "multiplicar_matriz"
var
    mat : vetor [1..5, 1..5] de inteiro
    x: inteiro
    L: inteiro
    C: inteiro
inicio
    escreva("Digite os elementos da matriz 5x5: ")
    para L de 1 ate 5 faca
        para C de 1 ate 5
            escreva("valores[",L,"][",C,"]: ")
            leia(mat[L,C])
        fimpara
    fimpara

    escreva("multiplique matriz por: ")
    leia(x)
    escreval("matriz x ", x , "=")

    para L de 1 ate 5 faca 
        para C de 1 ate 5 faca
            escreva(mat[L,C] * x," ")
        fimpara
        escreval("")
    fimpara
fimalgoritmo

//Faça um algoritmo para ler uma matriz 5x5 de números inteiros. A seguir, o algoritmo deve calcular e mostrar a soma dos elementos da diagonal principal. 
algoritmo "somadiagonalmain"
var
    mat : vetor [1..5, 1..5] de inteiro
    somaD: inteiro
    L: inteiro
    C: inteiro
inicio
    escreva("valores da matriz: ")
    para L de 1 ate 5 faca
        para C de 1 ate 5 faca
            escreva("valores[",L,"][",C,"]: ")
            leia(mat[L,C])
        fimpara
    fimpara

    escreval("Ver matriz: ")
    para L de 1 ate 5 faca
        para C de 1 ate 5 faca
            escreva (mat[L,C], " ")//espacamento entre os numeros, para n ficarem colados
        fimpara
        escreval("") //para pular a linha a cada linha com 5 valores
    fimpara

    somaD <- 0
    para L de 1 ate 5 faca
        somaD <- somaD + mat [L,L] //tanto a linha quanto a coluna possuem o mesmo valor L. E usado apenas para acessar a diagonal principal.
    fimpara
    escreva("Soma diagonal principal: ", somaD)
fimalgoritmo