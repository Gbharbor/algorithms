algoritmo "SistemaCompletoFuncoes"
var
    opcao: inteiro
    salario, salariocorrigido, km, milhas: real
    idade, numero, cubo: inteiro
    emaior: logico

// Função para calcular reajuste salarial
funcao calcularreajuste(salarioatual: real): real
    var
        porcentualreajuste: real
    inicio
        se (salarioatual <= 1000) entao
            porcentualreajuste <- 0.10 // 10%
        senao
            se (salarioatual > 1000 e salarioatual < 2000) entao
                porcentualreajuste <- 0.08 // 8%
            senao
                porcentualreajuste <- 0.06 // 6%
            fimse
        fimse
        retorne salarioatual * (1 + porcentualreajuste)
fimfuncao

// Função para verificar maioridade
funcao emaiordeidade(idadepessoa: inteiro): logico
    inicio
        se idadepessoa >= 18 entao
            retorne verdadeiro
        senao
            retorne falso
        fimse
fimfuncao

// Função para calcular o cubo de um número
funcao calcularcubo(numero: inteiro): inteiro
    inicio
        retorne numero * numero * numero
fimfuncao

// Função para converter quilômetros para milhas
funcao convertermilhas(km: real): real
    inicio
        retorne km * 0.62
fimfuncao

inicio
    escreval("Bem-vindo ao Sistema Completo com Funções!")
    escreval("Escolha uma operação:")
    escreval("1 - Reajuste Salarial")
    escreval("2 - Verificar Maioridade")
    escreval("3 - Calcular o Cubo de um Número")
    escreval("4 - Converter KM para Milhas")
    escreva("Digite sua opção: ")
    leia(opcao)

    escolha opcao
    caso 1
        escreva("Digite o salário do funcionário: ")
        leia(salario)
        salariocorrigido <- calcularreajuste(salario)
        escreval("O salário corrigido é: R$ ", salariocorrigido:0:2)
    caso 2
        escreva("Digite a idade: ")
        leia(idade)
        emaior <- emaiordeidade(idade)
        se emaior entao
            escreval("É maior de idade!")
        senao
            escreval("Não é maior de idade!")
        fimse
    caso 3
        escreva("Digite o número para calcular o cubo: ")
        leia(numero)
        cubo <- calcularcubo(numero)
        escreval("O cubo de ", numero, " é: ", cubo)
    caso 4
        escreva("Digite o valor em KM para converter em Milhas: ")
        leia(km)
        milhas <- convertermilhas(km)
        escreval(km, " KM equivale a ", milhas:0:2, " Milhas.")
    caso contrario
        escreval("Opção inválida. Tente novamente!")
    fimescolha

    escreval("\nObrigado por usar o sistema!")
fimalgoritmo

///////////////////////////////////////////////////////////
algoritmo "reajuste salarial com funcoes"
var
    salario: real
    salariocorrigido: real
funcao calcularreajuste(salarioatual: real): real
    var 
        porcentualreajuste: real
    inicio
        se (salarioatual <= 1000) entao 
            porcentualreajuste <- 0.10// 10%
        senao
            se (salarioatual > 1000 e salarioatual < 2000) entao 
                porcentualreajuste <- 0.08 // 8%
            senao
                porcentualreajuste <- 0.06 // 6%
            fimse
        fimse
        retorne salarioatual * (1 + porcentualreajuste)
fimfuncao
inicio
    escreva("Salario do funcionario: ")
    leia(salario)
    salariocorrigido <- calcularreajuste(salario)
    escreval("O salario corrigido: ", salariocorrigido:0:2)
fimalgoritmo
//////////////////////////////////////////////////////////
algoritmo "reajuste_salarial_direto_no_flux_principal"
var
    salario: real
    porcentualreajuste: real
    salariocorrigido: real
funcao obterpercentualreajuste(salarioatual: real): real
    se salarioatual <= 1000 entao 
        retorne 0.10 // 10%
    senao
        se salarioatual > 1000 e salarioatual < 2000 entao 
            retorne 0.08 //8%
        senao
            retorne 0.06//6%
        fimse
    fimse
fimfuncao
inicio  
    escreva("digite o salario do funcionario: ")
    leia(salario)
    porcentualreajuste <- obterpercentualreajuste(salario)
    salariocorrigido <- salario * (1 + porcentualreajuste)
    escreval("o porcentual reajuste foi de: ",(porcentualreajuste * 100):0:2, " %")
    escreval("o salario corrigido: ", salariocorrigido:0:2)
fimalgoritmo
//////////////////////////////////////////////////////////
algoritmo "verificar_maioridade"
var
    idade : inteiro
    emaior : logico
funcao emaiordeidade(idadepessoa:inteiro): logico
    se idadepessoa >= 18 entao 
        retorne verdadeiro
    senao
        retorne falso
    fimse
fimfuncao
inicio
    escreva("digite a idade: ")
    leia(idade)
    emaior <- emaiordeidade(idade)
    se emaior entao //é com base no retorno da funcao
        escreval("é maior de idade !")
    senao
        escreval("nao é !")
    fimse
fimalgoritmo
//////////////////////////////////////////////////////////
algoritmo "calcular_cubo"
var
    n: inteiro
    resultado: inteiro
funcao calc_cubo(numero: inteiro): inteiro
    inicio 
        retorne numero * numero * numero
fimfuncao
inicio
    escreva("digite o numero que quer elevar ao cubo: ")
    leia(n)
    resultado <- calc_cubo(n)
    escreval("o cubo de ", n ," é: ", resultado)
fimalgoritmo
//////////////////////////////////////////////////////////
algoritmo "converter_km_para_milhas"
var
    km: real
    milhas: real
funcao convertomilhas(km: real):real
    retorne km * 0.62 //km => milhas
fimfuncao
inicio
    escreva("valor em km: ")
    leia(km)
    milhas <- convertomilhas(km)
    escreval(km," equivale a: ",milhas," milhas.")
fimalgoritmo