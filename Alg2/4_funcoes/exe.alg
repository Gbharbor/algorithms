algoritmo "Reajuste_Salarial_Com_Funcao"
var
    salario, salarioCorrigido : real

// Função para calcular o salário corrigido de acordo com a faixa salarial
funcao CalcularReajuste(salarioAtual: real): real
var
    percentualReajuste : real
inicio
    se salarioAtual <= 1000 entao
        percentualReajuste <- 0.10 // Reajuste de 10%
    senao
        se salarioAtual > 1000 e salarioAtual < 2000 entao
            percentualReajuste <- 0.08 // Reajuste de 8%
        senao
            percentualReajuste <- 0.06 // Reajuste de 6%
        fimse
    fimse

    // Retorna o salário corrigido
    retorne salarioAtual * (1 + percentualReajuste)
fimfuncao

inicio
    // Leitura do salário do funcionário
    escreva("Digite o salário do funcionário: ")
    leia(salario)
    
    // Chama a função para calcular o salário corrigido
    salarioCorrigido <- CalcularReajuste(salario)

    // Exibição do salário corrigido
    escreval("O salário corrigido do funcionário é: R$ ", salarioCorrigido:0:2)
fimalgoritmo
///////////////////////////////////////////////////////////////////////////////////////////
algoritmo "Reajuste_Salarial_Com_Porcentagem"
var
    salario, percentualReajuste, salarioCorrigido : real

// Função para determinar a porcentagem de reajuste de acordo com a faixa salarial
funcao ObterPercentualReajuste(salarioAtual: real): real
inicio
    se salarioAtual <= 1000 entao
        retorne 0.10 // Reajuste de 10%
    senao
        se salarioAtual > 1000 e salarioAtual < 2000 entao
            retorne 0.08 // Reajuste de 8%
        senao
            retorne 0.06 // Reajuste de 6%
        fimse
    fimse
fimfuncao

inicio
    // Leitura do salário do funcionário
    escreva("Digite o salário do funcionário: ")
    leia(salario)
    
    // Chama a função para obter o percentual de reajuste
    percentualReajuste <- ObterPercentualReajuste(salario)

    // Calcula o novo salário aplicando o percentual de reajuste
    salarioCorrigido <- salario * (1 + percentualReajuste)

    // Exibição do salário corrigido
    escreval("O percentual de reajuste aplicado foi de: ", (percentualReajuste * 100):0:2, "%")
    escreval("O salário corrigido do funcionário é: R$ ", salarioCorrigido:0:2)
fimalgoritmo
///////////////////////////////////////////////////////////////////////////////////////////

algoritmo "Verificar_Maioridade"
var
    nome : caractere
    idade : inteiro
    ehMaior : logico

// Função para verificar se a pessoa é maior de idade
funcao EhMaiorDeIdade(idadePessoa: inteiro): logico
inicio
    se idadePessoa >= 18 entao
        retorne verdadeiro
    senao
        retorne falso
    fimse
fimfuncao

inicio
    // Leitura do nome e da idade da pessoa
    escreva("Digite o nome da pessoa: ")
    leia(nome)
    
    escreva("Digite a idade da pessoa: ")
    leia(idade)

    // Chama a função para verificar se a pessoa é maior de idade
    ehMaior <- EhMaiorDeIdade(idade)

    // Exibe o resultado com base no valor retornado pela função
    se ehMaior entao
        escreval(nome, " é maior de idade.")
    senao
        escreval(nome, " não é maior de idade.")
    fimse
fimalgoritmo
