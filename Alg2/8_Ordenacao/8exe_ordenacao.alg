// 1. **Bubble Sort**:
// - Compara e troca pares adjacentes.
// - Simples, mas **muito lento** (\( O(n^2) \)).
// - Bom só para aprendizado ou vetores muito pequenos.
algoritmo "ordenar vetor bubblesort"
var
    vetor: vetor [1..10] de inteiro
    i, j, temp : inteiro
inicio
    para i de 1 ate 10 faca //ler os 10 num do vetor
        escreva("digite o num na posicao: ",i,": ")
        leia(vetor[i])
    fimpara
////Isso significa que a cada passada, ele analisa menos elementos (porque os maiores já estão no final). 
//esse valor de i vai ate 9 ou seja : j vai de 1 a 10 - i(9), digamos q digitou 5,3,8,1,4 , ele vai comparar assim (5,3)(3,8)(8,1)(1,4), e vai diminuindo ate chegar em 10-i(1)
    para i de 1 ate 9 faca 
        para j de 1 ate 10-1 faca
            se vetor[j] > vetor[j+1] entao 
                temp <- vetor[j]
                vetor[j] <- vetor[j+1]
                vetor[j+1] <- temp
            fimse
        fimpara
    fimpara
    escreval("vetor ordenado ordem crescente: ")
    para i de 1 ate 10 faca
        escreval(vetor[i])
    fimpara
fimalgoritmo
//////////////////////////////////////////////////////////
// 2. **Insertion Sort**:
// - Insere cada elemento na posição correta no segmento ordenado.
// - **Rápido para vetores pequenos ou quase ordenados**.
// - Melhor que Bubble Sort na maioria dos casos.
algoritmo "Ordenar_Vetor_InsertionSort"
var
    vetor : vetor[1..10] de inteiro
    i, j, temp : inteiro
inicio
    // Leitura dos 10 números no vetor
    para i de 1 ate 10 faca
        escreva("Digite o número na posição ", i, ": ")
        leia(vetor[i])
    fimpara
        // Algoritmo Insertion Sort para ordenar o vetor
        para i de 2 ate 10 faca //i=1(ja esta ordenado)
            temp <- vetor[i]// temp<-vetor[2] => temp=3 => exe={5,3,8,1,4,23,7,4,2,6} // temp=6[i=10]
            j<-i-1// [2...10] | j<-[2-1]=> j=1 |.../// j<-9 => v=j[2]
                enquanto (j>0) e (vetor[j]>temp) faca // |[1>0] & {{v[1(5)]} > {temp[2(3)]}}| => true
                    vetor[j+1] <- vetor[j] // v[1+1] => v[2(3)]<- v[1(5)] => {v[1(3)]|v[2(5)]} => exe(i=2)={3,5,8,1,4} 
                    j<- j-1 // "contador" precisa decrementar ate que j=0 e todos elementos a esquerda ja foram analisados
                    //v[1(5)]
                fimenquanto
            vetor[j+1]<-temp // quando n for mais satisfeito o temp sera j+1, ou seja quando v[j]<temp, significa q o temp ja esta bem posicionado.
            //ou seja quando j=0 => v[0+1] = v[1]= temp => 1
        fimpara
    // Exibição do vetor ordenado
    escreval("Vetor ordenado em ordem crescente:")
    para i de 1 ate 10 faca
        escreval(vetor[i])
    fimpara
fimalgoritmo
//////////////////////////////////////////////////////////////////////////
// 3. **Selection Sort**:
// - Encontra o menor elemento e o coloca na posição correta.
// - Faz **menos trocas**, mas ainda é lento (\( O(n^2) \)).
// - Útil se trocar elementos for custoso.
algoritmo "ordenar vetor selection sort"
var
    vetor: vetor[1..10] de inteiro
    i,j,min,temp : inteiro
inicio
    para i de 1 ate 10 faca
        escreva("Digite o número na posição ", i, ": ")
        leia(vetor[i])
    fimpara

        // Algoritmo Selection Sort para ordenar o vetor
        para i de 1 ate 9 faca // a posicao i=10, ja estara ordenado.
            min <- i //menor elemento
            para j de i + 1 ate 10 faca
                se vetor[j] < vetor[min] entao 
                    min <- j //nesse caso se vetor min for maior q j, altera o velor de mim para o j, assim altera o valor de mim para um novo valor minimo. 
                fimse
            fimpara
            //troca o elemento atual com o menor encontrado
            se min <> i entao 
                temp <- vetor[i]
                vetor[i] <- vetor[min]
                vetor[min] <- temp
            fimse
        fimpara

    // Exibição do vetor ordenado
    escreval("Vetor ordenado em ordem crescente:")
    para i de 1 ate 10 faca
        escreval(vetor[i])
    fimpara
fimalgoritmo