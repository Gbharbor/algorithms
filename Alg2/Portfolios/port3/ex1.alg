//Aqui está o algoritmo em VisualG que usa um procedimento para calcular e exibir o valor de \( n \) elevado ao quadrado. O valor de \( n \) é informado pelo usuário no módulo principal:

algoritmo "Calcular_Quadrado"
var
    n : inteiro

// Procedimento para calcular o quadrado de n
procedimento calcular_quadrado(numero : inteiro)
var
    resultado : inteiro
inicio
    resultado <- numero * numero
    escreval("O quadrado de ", numero, " é: ", resultado)
fimprocedimento

inicio
    // Entrada de dados
    escreva("Digite um número inteiro: ")
    leia(n)

    // Chamada do procedimento passando n como parâmetro
    calcular_quadrado(n)
fimalgoritmo

// Explicação do Algoritmo
//1. **Procedimento `calcular_quadrado`**:
//   - Recebe um parâmetro `numero` e calcula o valor de `numero * numero`.
//   - Exibe o resultado na tela.
//2. **Módulo Principal**:
//   - Solicita ao usuário que insira um valor para `n`.
//   - Chama o procedimento `calcular_quadrado`, passando o valor de `n` como argumento para o cálculo.
//Esse algoritmo calcula e exibe o quadrado de um número fornecido pelo usuário.