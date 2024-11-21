algoritmo "Calcular_Fatorial"
var
    numero, resultado : inteiro

// Função para calcular o fatorial de um número usando uma estrutura de repetição
funcao Fatorial(n: inteiro): inteiro
var
    i, fat : inteiro
inicio
    fat <- 1 // Inicializa o fatorial como 1
    para i de 1 ate n faca
        fat <- fat * i // Multiplica o valor atual de fat pelo índice i
    fimpara
    retorne fat // Retorna o resultado final
fimfuncao

inicio
    // Leitura do número para calcular o fatorial
    escreva("Digite um número para calcular o fatorial: ")
    leia(numero)
    
    // Validação para números negativos
    se numero < 0 entao
        escreval("Fatorial não é definido para números negativos.")
        interrompa // Termina o programa para entradas inválidas
    fimse
    
    // Chama a função Fatorial e armazena o resultado
    resultado <- Fatorial(numero)
    
    // Exibe o resultado
    escreval("O fatorial de ", numero, " é: ", resultado)
fimalgoritmo
/////////////////////////////////////////////////////////////////////////////////////
algoritmo "Calcular_Fatorial_Recursivo"
var
    numero, resultado : inteiro

// Função recursiva para calcular o fatorial de um número
funcao Fatorial(n: inteiro): inteiro
inicio
    se n = 0 entao
        retorne 1 // Caso base: o fatorial de 0 é 1
    senao
        retorne n * Fatorial(n - 1) // Chamada recursiva para calcular o fatorial
    fimse
fimfuncao

inicio
    // Leitura do número para calcular o fatorial
    escreva("Digite um número para calcular o fatorial: ")
    leia(numero)
    
    // Validação para números negativos
    se numero < 0 entao
        escreval("Fatorial não é definido para números negativos.")
        interrompa // Termina o programa para entradas inválidas
    fimse

    // Limitação para números grandes
    se numero > 15 entao
        escreval("Número muito grande! A recursão pode falhar para valores maiores que 15.")
        interrompa
    fimse
    
    // Chama a função Fatorial e armazena o resultado
    resultado <- Fatorial(numero)
    
    // Exibe o resultado
    escreval("O fatorial de ", numero, " é: ", resultado)
fimalgoritmo