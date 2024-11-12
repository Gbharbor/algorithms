//Aqui está o algoritmo em VisualG contendo um procedimento que recebe dois números positivos como parâmetros e calcula a soma de todos os números inteiros existentes entre eles. O resultado é armazenado em uma variável global e exibido no módulo principal:

algoritmo "Soma_Entre_Numeros"
var
    num1, num2, soma : inteiro  // Variáveis para armazenar os dois números e a soma

// Procedimento para calcular a soma dos números entre num1 e num2
procedimento somar_entre_numeros(a : inteiro, b : inteiro)
var
    i : inteiro
inicio
    soma <- 0  // Inicializa a soma com 0
    para i de a + 1 ate b - 1 faca  // Loop para percorrer os números entre a e b
        soma <- soma + i  // Soma os números no intervalo
    fimpara
fimprocedimento

inicio
    // Entrada de dados
    escreva("Digite o primeiro número positivo: ")
    leia(num1)

    escreva("Digite o segundo número positivo: ")
    leia(num2)

    // Verifica se os números são positivos e se o primeiro é menor que o segundo
    se (num1 > 0) e (num2 > 0) e (num1 < num2) então
        // Chamada do procedimento para calcular a soma
        somar_entre_numeros(num1, num2)

        // Exibição do resultado
        escreval("A soma dos números entre ", num1, " e ", num2, " é: ", soma)
    senao
        escreval("Por favor, insira dois números positivos, e o primeiro número deve ser menor que o segundo.")
    fimse
fimalgoritmo

//### Explicação do Algoritmo

//1. **Variáveis**:
//   - `num1` e `num2`: Variáveis que armazenam os dois números fornecidos pelo usuário.
//   - `soma`: Variável global onde será armazenado o resultado da soma.

//2. **Procedimento `somar_entre_numeros`**:
//   - Recebe dois números (`a` e `b`) como parâmetros.
//   - Inicializa a variável `soma` com 0.
//   - Utiliza um laço `para` para percorrer os números entre `a` e `b` (excluindo `a` e `b`) e vai somando cada número no intervalo.
//   - O resultado final da soma é armazenado na variável global `soma`.

//3. **Módulo Principal**:
//   - Solicita ao usuário que insira dois números positivos (`num1` e `num2`).
//   - Verifica se os números são positivos e se `num1` é menor que `num2`.
//   - Chama o procedimento `somar_entre_numeros`, passando os dois números como parâmetros.
//   - Exibe a soma calculada ou uma mensagem de erro caso as condições não sejam atendidas.

//### Exemplo de Execução

//Se o usuário inserir `3` e `7` como os dois números, a saída será:

//Digite o primeiro número positivo: 3
//Digite o segundo número positivo: 7
//A soma dos números entre 3 e 7 é: 12


//Neste caso, a soma dos números entre 3 e 7 (isto é, 4, 5 e 6) é `12`.

//Esse algoritmo soma todos os números inteiros entre dois valores fornecidos e exibe o resultado no módulo principal.