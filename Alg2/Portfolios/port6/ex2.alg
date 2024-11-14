//Aqui está o algoritmo em pseudocódigo para calcular a multiplicação de dois números naturais através de somas sucessivas usando uma função recursiva:

Algoritmo "Multiplicação com Soma Recursiva"

Função recursiva Multiplicacao(n1, n2: inteiro): inteiro
    Se (n2 = 0) então
        retorne 0
    Senão
        retorne n1 + Multiplicacao(n1, n2 - 1)
    FimSe
FimFunção

Var
    n1, n2, resultado: inteiro

Início
    // Entrada dos números
    Escreva("Digite o primeiro número natural: ")
    Leia(n1)
    Escreva("Digite o segundo número natural: ")
    Leia(n2)
    
    // Chama a função recursiva
    resultado := Multiplicacao(n1, n2)
    
    // Saída do resultado
    Escreva("O produto de ", n1, " e ", n2, " é: ", resultado)
FimAlgoritmo

//### Explicação

//1. **Função `Multiplicacao(n1, n2)`**: Esta função recursiva realiza a multiplicação através de somas sucessivas.
//   - Se `n2` for igual a 0, retorna 0 (caso base).
//   - Caso contrário, retorna `n1` somado ao resultado de `Multiplicacao(n1, n2 - 1)`, somando `n1` sucessivamente até que `n2` seja zero.

//2. **Módulo principal**: 
//   - Lê os valores de `n1` e `n2` fornecidos pelo usuário.
//   - Chama a função `Multiplicacao` para calcular o resultado.
//   - Exibe o resultado final.

//Esse algoritmo simula a multiplicação de forma recursiva, usando apenas operações de soma.