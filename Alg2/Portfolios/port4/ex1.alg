//Aqui está o algoritmo em VisualG com uma função que calcula e retorna o valor de \( n \) elevado à terceira potência (n³). O valor de \( n \) será informado pelo usuário no módulo principal, e o resultado também será exibido no módulo principal:

algoritmo "Calcular_Cubo"
var
    n : inteiro
    resultado : inteiro

// Função para calcular o cubo de n
funcao calcular_cubo(numero : inteiro) : inteiro
inicio
    retorne numero * numero * numero
fimfuncao

inicio
    // Entrada de dados
    escreva("Digite um número inteiro: ")
    leia(n)

    // Chamada da função para calcular o cubo de n
    resultado <- calcular_cubo(n)

    // Exibição do resultado
    escreval("O cubo de ", n, " é: ", resultado)
fimalgoritmo

//### Explicação do Algoritmo

//1. **Função `calcular_cubo`**:
//   - Recebe o parâmetro `numero` e retorna o valor de `numero` elevado à terceira potência, ou seja, `numero * numero * numero`.

//2. **Módulo Principal**:
//   - Solicita ao usuário que insira um valor para `n`.
//   - Chama a função `calcular_cubo` passando o valor de `n` e armazena o resultado na variável `resultado`.
//   - Exibe o valor de `n` elevado à terceira potência.

//## Exemplo de Execução
//Se o usuário inserir `3`, a saída será:
//Digite um número inteiro: 3
//O cubo de 3 é: 27

//Este algoritmo realiza o cálculo do cubo de um número e exibe o resultado ao usuário.