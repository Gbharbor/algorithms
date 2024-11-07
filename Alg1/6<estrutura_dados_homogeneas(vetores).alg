
algoritmo "first_vetor"
var
    a : inteiro
    age : vetor [1..10] de real
inicio
    n <- 30
    age[2] <- a
    age[2] <- age[2] + 4
    age[8] <- a + 5
    age[10] <- age[8] + 5
    age[1] <- 54
    escreva (age[2],age[2],age[8],age[10])
fimalgoritmo
//VETORES USANDO MODO: (Para fimpara)
//Escreva um algoritmo que declare um vetor do tipo real e leia as notas de 10 alunos.

algoritmo "gestao_alunos"
var
    n: inteiro
    score: vetor [1..5] de real
    name: vetor [1..5] de caractere
    aprovados: inteiro
inicio
    aprovados := 0
    
    para n de 1 ate 5 passo 1 faca
        escreval("Nome do Aluno: ")
        leia(name[n])
        escreval("Nota do Aluno: ")
        leia(score[n])
        
        se score[n] >= 7.0 entao
            escreval(name[n], " foi aprovado com nota ", score[n])
            aprovados := aprovados + 1
        fimse
    fimpara
    
    escreval("Total de Aprovados: ", aprovados)
fimalgoritmo

algoritmo "media_dos_alunos"
var
    n: inteiro
    score: vetor [1..5] de real
    media: real
inicio
    media := 0
    
    para n de 1 ate 5 passo 1 faca
        escreval("Nota do Aluno: ")
        leia(score[n])
        media := media + score[n]
    fimpara
    
    media := media / 5
    escreval("A média das notas é: ", media)
fimalgoritmo


//VETORES USANDO MODO: (Repita ate)
//Algoritmo so para ate que seja inserido um ponto, ou atinja os 10 alunos totais.
algoritmo "contagem_alunos"
var 
    n: inteiro
    name: vetor [1..10] de caractere
inicio
    n <- 1
    escreva("Ensira um nome: ")
    repita 
        leia(name[n])
        n <- n + 1
    ate ((name[n-1] = ".") ou (n = 11))//precisa ser igual a 11 para garantir pelo menos 10 nomes.
    escreva (name[2])
fimalgoritmo
//VETORES USANDO MODO: (repita ate) e (para fimpara)
//Calcular a media dos alunos da classe
algoritmo "vetor_nota"
var
    media: real
    sum: real 
    qtd: inteiro
    score: vetor [1..5] de real
    name: vetor [1..5] de caractere
inicio
    qtd <- 1
    repita
        escreva("Nome: ")
        leia(name[qtd])
        escreva("Nota: ")
        leia(score[qtd])
        qtd <- qtd + 1
    ate qtd > 5
    
    sum <- 0
    para qtd de 1 ate 5 passo 1 faca
        sum<- sum + score[qtd]
        escreval("Aluno: ",name[qtd]," "," Nota: ", score[qtd])
    fimpara
    media <- sum/qtd
    escreva("Media da Turma: ", media)
fimalgoritmo

//Elaborar um algoritmo para receber as notas de um grupo de 30 alunos e, ao final, exibir cada uma das notas acompanhadas da média, da menor e da maior nota lida.
algoritmo "notas_alunos"
var 
    score : vetor [1..4] de real
    media: real
    sum: real
    low: real
    high: real
    qty: inteiro
inicio 
    sum <- 0
    low <- 10
    high <- 0

    para qty de 1 ate 4 passo 1 faca
        escreval("nota: ")
        leia(score[qty])    
        sum <- sum + score[qty]
        
            se score[qty] < low entao
                low <- score[qty]
            fimse
            se score[qty] > high entao
                high <- score[qty]
            fimse
    fimpara
    media<-sum/qty
    escreval("Media: ",media)
    escreval("High Score: ",high)
    escreval("Low Score: ".low)
fimalgoritmo

//Ler 10 elementos de um vetor, colocá-los em ordem decrescente (maior para o menor)
algoritmo "classificacao"
var 
    elementos : vetor [1..10] de inteiro
    x: inteiro
    y: inteiro
    z : inteiro
inicio
    para x de 1 ate 10 faca
        leia(elementos[x])
    fimpara

    para x de 1 ate 9 passo 1 faca
        para z de x+1 ate 10 passo 1 faca
            se (elementos[x]<elementos[z]) entao
                y<- elementos[x]
                elementos[x] <- elementos[z]
                elementos[z] <- y
            fimse
        fimpara
    fimpara

    para x de 1 ate 10 passo 1 faca
        escreval("vetor decrescente: ", elementos[x])
    fimpara
fimalgoritmo

//Ler um vetor de 10 numeros e exibir em ordem inversa. (123) -> (321)
algoritmo "inverso"
var
    valor : vetor [1..5] de inteiro
    i : inteiro
inicio 
    para i de 1 ate 5 passo 1 faca
        escreva("valor: ")
        leia(valor[i])
    fimpara
    escreval("inverso: ")
    para i de 5 ate 1 passo -1 faca 
        escreva(valor[i]," ")
    fimpara
fimalgoritmo

//Faça um algoritmo para ler um vetor de 10 números inteiros,como também, ler um número inteiro x. A seguir, o algoritmo deve calcular e mostrar quantas vezes o número x aparece no vetor.
algoritmo "contagem_especific_number"
var
    valor : vetor [1..10] de inteiro
    i: inteiro
    x: inteiro
    contador: inteiro
inicio
    para i de 1 ate 10 passo 1 faca
        escreva("valores: ")
        leia(valor[i])
    fimpara
    escreval("contagem:")
    leia(x)

    contador <- 0
    para i de 1 ate 10 passo 1 faca
        se valor[x] = x entao
            contador<- contador + 1
        fimse
    fimpara
    escreva("o numero: ",x," apareceu:",contador)
fimalgoritmo