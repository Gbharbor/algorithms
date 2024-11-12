//Aqui está o algoritmo em VisualG com um procedimento para calcular a média aritmética de dois números. Os números são lidos no módulo principal, e o procedimento retorna o resultado por referência.

algoritmo "Calcular_Media"
var
    num1, num2, media : real

// Procedimento para calcular a média de dois números
procedimento calcular_media(a : real, b : real, var resultado : real)
inicio
    resultado <- (a + b) / 2
fimprocedimento

inicio
    // Entrada de dados
    escreva("Digite o primeiro número: ")
    leia(num1)
    
    escreva("Digite o segundo número: ")
    leia(num2)

    // Chamada do procedimento passando num1 e num2 como parâmetros e media como referência
    calcular_media(num1, num2, media)

    // Exibição do resultado
    escreval("A média aritmética de ", num1, " e ", num2, " é: ", media)
fimalgoritmo

//### Explicação do Algoritmo

//1. **Procedimento `calcular_media`**:
//   - Recebe três parâmetros: `a` e `b` (os números para calcular a média) e `resultado` (por referência), onde a média será armazenada.
//   - Calcula a média aritmética com a fórmula `(a + b) / 2` e armazena o valor no parâmetro `resultado`.

//2. **Módulo Principal**:
//   - Solicita ao usuário que insira dois números (`num1` e `num2`).
//   - Chama o procedimento `calcular_media`, passando `num1` e `num2` como valores e `media` como parâmetro por referência.
//   - Exibe a média calculada.

//Esse algoritmo calcula a média de dois números fornecidos pelo usuário e exibe o resultado. A média é passada de volta ao módulo principal por referência.