Claro! Aqui está a organização do conteúdo original para facilitar a leitura:

---

### Algoritmo Bubble Sort em VisualG

```pascal
algoritmo "Ordenar_Vetor_BubbleSort"
var
    vetor : vetor[1..10] de inteiro
    i, j, temp : inteiro

inicio
    // Leitura dos 10 números no vetor
    para i de 1 ate 10 faca
        escreva("Digite o número na posição ", i, ": ")
        leia(vetor[i])
    fimpara

    // Algoritmo Bubble Sort para ordenar o vetor
    para i de 1 ate 9 faca
        para j de 1 ate 10 - i faca
            se vetor[j] > vetor[j+1] entao
                temp <- vetor[j]
                vetor[j] <- vetor[j+1]
                vetor[j+1] <- temp
            fimse
        fimpara
    fimpara

    // Exibição do vetor ordenado
    escreval("Vetor ordenado em ordem crescente:")
    para i de 1 ate 10 faca
        escreval(vetor[i])
    fimpara
fimalgoritmo
```

#### Explicação do Algoritmo Bubble Sort

1. **Leitura do Vetor**: O usuário insere 10 números que são armazenados no vetor.
2. **Ordenação (Bubble Sort)**:
   - Compara elementos adjacentes e troca-os se estiverem fora de ordem.
   - O loop externo executa 9 vezes para garantir que o vetor seja completamente ordenado.
3. **Exibição do Vetor Ordenado**: O vetor é exibido em ordem crescente.

---

### Algoritmo Insertion Sort em VisualG

```pascal
algoritmo "Ordenar_Vetor_InsertionSort"
var
    vetor : vetor[1..10] de inteiro
    i, j, chave : inteiro

inicio
    // Leitura dos 10 números no vetor
    para i de 1 ate 10 faca
        escreva("Digite o número na posição ", i, ": ")
        leia(vetor[i])
    fimpara

    // Algoritmo Insertion Sort para ordenar o vetor
    para i de 2 ate 10 faca
        chave <- vetor[i]
        j <- i - 1
        enquanto (j > 0) e (vetor[j] > chave) faca
            vetor[j + 1] <- vetor[j]
            j <- j - 1
        fimenquanto
        vetor[j + 1] <- chave
    fimpara

    // Exibição do vetor ordenado
    escreval("Vetor ordenado em ordem crescente:")
    para i de 1 ate 10 faca
        escreval(vetor[i])
    fimpara
fimalgoritmo
```

#### Explicação do Algoritmo Insertion Sort

1. **Leitura do Vetor**: Os 10 números são lidos e armazenados no vetor.
2. **Ordenação (Insertion Sort)**:
   - A variável `chave` armazena o valor atual que será posicionado.
   - O loop move os elementos maiores para a direita até encontrar o lugar certo para `chave`.
3. **Exibição do Vetor Ordenado**: Exibe o vetor já ordenado em ordem crescente.

---

### Algoritmo Selection Sort em VisualG

```pascal
algoritmo "Ordenar_Vetor_SelectionSort"
var
    vetor : vetor[1..10] de inteiro
    i, j, min, temp : inteiro

inicio
    // Leitura dos 10 números no vetor
    para i de 1 ate 10 faca
        escreva("Digite o número na posição ", i, ": ")
        leia(vetor[i])
    fimpara

    // Algoritmo Selection Sort para ordenar o vetor
    para i de 1 ate 9 faca
        min <- i
        para j de i + 1 ate 10 faca
            se vetor[j] < vetor[min] entao
                min <- j
            fimse
        fimpara

        // Troca o elemento atual com o menor encontrado
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
```

#### Explicação do Algoritmo Selection Sort

1. **Leitura do Vetor**: Leitura dos 10 números para o vetor.
2. **Ordenação (Selection Sort)**:
   - Em cada posição, encontra o menor elemento no trecho restante e o posiciona.
   - Garante que o vetor fique em ordem crescente.
3. **Exibição do Vetor Ordenado**: Exibe o vetor já ordenado.

---

### Exemplos de Execução

Para todos os algoritmos, se o usuário insere os valores na ordem `5, 3, 8, 4, 1, 9, 2, 6, 7, 0`, a saída será:

```
Vetor ordenado em ordem crescente:
0
1
2
3
4
5
6
7
8
9
```

--- 

Esse formato facilita a leitura e o entendimento dos três algoritmos de ordenação: **Bubble Sort**, **Insertion Sort** e **Selection Sort**.