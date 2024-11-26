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