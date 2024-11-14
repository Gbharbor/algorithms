//Aqui está o algoritmo em pseudocódigo para calcular a soma de dois números naturais através de incrementos sucessivos usando uma função recursiva:

Algoritmo "Soma com Incremento Recursivo"

Função recursiva Soma(n1, n2: inteiro): inteiro
    Se (n2 = 0) então
        retorne n1
    Senão
        retorne Soma(n1 + 1, n2 - 1)
    FimSe
FimFunção

Var
    n1, n2, resultado: inteiro

Inicio
    // Entrada dos números
    Escreva("Digite o primeiro número natural: ")
    Leia(n1)
    Escreva("Digite o segundo número natural: ")
    Leia(n2)
    
    // Chama a função recursiva
    resultado := Soma(n1, n2)
    
    // Saída do resultado
    Escreva("A soma de ", n1, " e ", n2, " é: ", resultado)
FimAlgoritmo


//### Explicação

//1. **Função `Soma(n1, n2)`**: Esta função recursiva soma dois números usando incrementos.
//   - Se `n2` for igual a 0, retorna `n1` (caso base).
//   - Caso contrário, chama a função `Soma(n1 + 1, n2 - 1)`, aumentando `n1` e diminuindo `n2` até que `n2` seja zero.

//2. **Módulo principal**: 
//   - Lê os valores de `n1` e `n2` fornecidos pelo usuário.
//   - Chama a função `Soma` para calcular o resultado.
//   - Exibe o resultado final.
//Essa estrutura usa a recursão para simular a adição por incrementos, o que é útil para compreender o conceito de soma através de operações básicas de incremento e decremento.