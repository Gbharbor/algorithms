algoritmo "reajuste salarial com funcoes"
var
    salario, salariocorrigido : real

// Função para calcular o reajuste baseado no salário atual
funcao calcularreajuste(salarioatual: real): real
    var
        porcentualreajuste : real
    inicio
        // Define o percentual de reajuste de acordo com o salário atual
        se (salarioatual <= 1000) entao 
            porcentualreajuste <- 0.10 // 10%
        senao
            se (salarioatual > 1000 e salarioatual < 2000) entao
                porcentualreajuste <- 0.08 // 8%
            senao
                porcentualreajuste <- 0.06 // 6%
            fimse
        fimse

        // Retorna o salário corrigido
        retorne salarioatual * (1 + porcentualreajuste)
    fimfuncao

// Fluxo principal
inicio
    // Leitura do salário do funcionário
    escreva("Digite o salário do funcionário: ")
    leia(salario)

    // Chama a função para calcular o salário corrigido
    salariocorrigido <- calcularreajuste(salario)

    // Exibe o salário corrigido
    escreval("O salário corrigido do funcionário é: ", salariocorrigido:0:2)
fimalgoritmo
///////////////////////////////////////////////////////////////////////////////////////////
algoritmo "reajuste salarial direto no fluxo principal"
var
    salario, porcentualreajuste, salariocorrigido: real

// Função para obter o percentual de reajuste com base no salário atual
funcao obterporcentualreajuste(salarioatual: real): real
    se salarioatual <= 1000 entao
        retorne 0.10 // 10%
    senao 
        se salarioatual > 1000 e salarioatual < 2000 entao
            retorne 0.08 // 8%
        senao 
            retorne 0.06 // 6%
        fimse
    fimse
fimfuncao

// Fluxo principal
inicio
    // Leitura do salário do funcionário
    escreva("Digite o salário do funcionário: ")
    leia(salario)

    // Chama a função para obter o percentual de reajuste
    porcentualreajuste <- obterporcentualreajuste(salario)

    // Calcula o novo salário aplicando o percentual de reajuste
    salariocorrigido <- salario * (1 + porcentualreajuste)

    // Exibe o percentual de reajuste aplicado e o salário corrigido
    escreval("O percentual de reajuste aplicado foi de: ", (porcentualreajuste * 100):0:2, "%")
    escreval("O salário corrigido do funcionário é: ", salariocorrigido:0:2)
fimalgoritmo

///////////////////////////////////////////////////////////////////////////////////////////
algoritmo "verificar maioridade"
var
    nome : caractere
    idade : inteiro
    emaior : logico

// Função para verificar se a pessoa é maior de idade
funcao emaiordeidade(idadepessoa: inteiro): logico
    se idadepessoa >= 18 entao 
        retorne verdadeiro
    senao
        retorne falso
    fimse
fimfuncao

// Fluxo principal
inicio
    // Leitura do nome e idade da pessoa
    escreva("Digite o nome da pessoa: ")
    leia(nome)
    escreva("Idade: ")
    leia(idade)

    // Chama a função emaiordeidade para verificar se é maior de idade
    emaior <- emaiordeidade(idade)

    // Exibe o resultado com base no valor retornado pela função
    se emaior entao 
        escreval(nome, " é maior de idade.")
    senao
        escreval(nome, " não é maior de idade.")
    fimse
fimalgoritmo