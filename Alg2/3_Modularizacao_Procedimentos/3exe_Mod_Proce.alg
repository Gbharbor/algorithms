algoritmo "Soma_Numeros_N_Vezes"
// Declaração de variáveis
var
    n, i : inteiro  // `n` define o número de execuções; `i` é o contador do laço
// Procedimento para ler dois números e exibir a soma
procedimento somardoisnumeros()
    var
        num1, num2, soma : real  // Variáveis locais para armazenar os números e o resultado da soma
    inicio
        escreva("Digite o 1º número: ")
        leia(num1)               // Lê o primeiro número fornecido pelo usuário
        escreva("Digite o 2º número: ")
        leia(num2)               // Lê o segundo número fornecido pelo usuário
        soma <- num1 + num2      // Calcula a soma dos dois números
        escreval("A soma dos números é: ", soma)  // Exibe o resultado
    fimprocedimento
// Fluxo principal do algoritmo
inicio
    escreva("Digite quantas vezes quer realizar a operação de soma: ")
    leia(n)                      // Lê o número de execuções desejado pelo usuário
    // Estrutura de repetição para executar o procedimento N vezes
    para i de 1 ate n faca
        escreval("Execução: ", i, " de ", n)  // Informa a execução atual
        somardoisnumeros()       // Chama o procedimento que realiza a soma
    fimpara
fimalgoritmo
/////////////////////////////////////////////////////////////////////
algoritmo "Soma_Numeros_Chamada"
// Declaração de variáveis
var
    n, i : inteiro            // `n` define o número de execuções; `i` é o contador do laço
    num1, num2 : real         // `num1` e `num2` armazenam os números fornecidos pelo usuário
// Procedimento para somar dois números e exibir o resultado
procedimento somardoisnumeros(num1: real, num2: real)
    var
        soma : real           // Variável local para armazenar a soma dos números
    inicio
        soma <- num1 + num2   // Realiza a soma de `num1` e `num2`
        escreval("A soma de ", num1, " e ", num2, " é: ", soma)  // Exibe o resultado
    fimprocedimento
inicio
    // Solicita ao usuário o número de vezes que deseja realizar a operação de soma
    escreva("Quantas vezes deseja realizar a operação de soma: ")
    leia(n)
    // Estrutura de repetição para executar o procedimento N vezes
    para i de 1 ate n faca
        escreval("Execução ", i, " de ", n)  // Informa a execução atual
        escreva("Digite o primeiro número: ")
        leia(num1)                           // Lê o primeiro número fornecido pelo usuário
        escreva("Digite o segundo número: ")
        leia(num2)                           // Lê o segundo número fornecido pelo usuário
        // Chama o procedimento passando os números como argumentos
        somardoisnumeros(num1, num2)
    fimpara
fimalgoritmo