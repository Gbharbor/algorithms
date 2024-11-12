algoritmo "Soma_Numeros_N_Vezes"
var
    n, i : inteiro

// Procedimento para ler dois números e exibir a soma
procedimento SomarDoisNumeros()
var
    numero1, numero2, soma : real
inicio
    escreva("Digite o primeiro número: ")
    leia(numero1)
    escreva("Digite o segundo número: ")
    leia(numero2)
    soma <- numero1 + numero2
    escreval("A soma dos números é: ", soma)
fimprocedimento

inicio
    // Solicita o número de vezes que o procedimento será executado
    escreva("Digite quantas vezes deseja realizar a operação de soma: ")
    leia(n)

    // Executa o procedimento N vezes
    para i de 1 ate n faca
        escreval("Execução ", i, " de ", n)
        SomarDoisNumeros()
    fimpara

fimalgoritmo
////////////////////////////////////////////////////////////////////////////////
algoritmo "Soma_Numeros_Chamada"
var
    n, i : inteiro
    numero1, numero2 : real

// Procedimento para somar dois números e exibir o resultado
procedimento SomarDoisNumeros(numero1: real, numero2: real)
var
    soma : real
inicio
    soma <- numero1 + numero2
    escreval("A soma de ", numero1, " e ", numero2, " é: ", soma)
fimprocedimento

inicio
    // Solicita o número de vezes que o procedimento será executado
    escreva("Digite quantas vezes deseja realizar a operação de soma: ")
    leia(n)

    // Executa o procedimento N vezes com entrada dos valores pelo usuário
    para i de 1 ate n faca
        escreval("Execução ", i, " de ", n)
        escreva("Digite o primeiro número: ")
        leia(numero1)
        escreva("Digite o segundo número: ")
        leia(numero2)
        // Chama o procedimento passando os números como argumentos
        SomarDoisNumeros(numero1, numero2)
    fimpara

fimalgoritmo
////////////////////////////////////////////////////////////////////////////////
