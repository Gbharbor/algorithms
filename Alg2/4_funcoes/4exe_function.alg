algoritmo "reajuste salarial com funcoes"
var
    salario, salariocorrigido : real
    funcao calcularreajuste(salarioatual: real): real
        var
            porcentualreajuste : real
        inicio
            se (salarioatual <= 1000) entao 
                porcentualreajuste <- 0.10 //10%
            senao
                se (salarioatual > 1000 e salarioatual < 2000) entao
                    porcentualreajuste <- 0.08 //8%
                senao
                    porecentualreajuste <- 0.06 //6%
                fimse
            fimse
            //retorne o salario corrigido
            retorne salarioatual * (1 + porcentualreajuste)
    fimfuncao
//fluxo principal 
inicio
    //leitura do salario do funcionario
    escreva("digite o salario do funcionrio: ")
    leia(salario)
    //chama a funcao para calcular o salario corrigido
    salariocorrigido <- calcularreajuste(salario)
    //exibe o salario corrigido
    escreval("o salario corrigido do funcionario é : ",salariocorrigido:0:2)//pode reduzir ou aumentar para preencher sempre as 2 casas decimais.
fimalgoritmo
///////////////////////////////////////////////////////////////////////////////////////////
algoritmo "reajuste salarial direto no fluxo principal"
var
    salario, porcentualreajuste, salariocorrigido: real
    //nesse caso na funcao so digo qual é a porcentagem do reajuste.
    funcao obterporcentualreajuste(salarioatual:real):real
        se salarioatual <= 1000 entao
            retorne 0.10 //10%
        senao 
            se salarioatual > 1000 e salarioatual < 2000 entao
                retorne 0.08 //8%
            senao 
                retorne 0.06 //6%
            fimse
        fimse
    fimfuncao
inicio
    //leitura do salario do funcionario
    escreva("digite o salario do funcionario: ")
    leia(salario)
    //cahama a funcao para obter o porcentual do reajuste
    porcentualreajuste <-obterporcentualreajuste(salario)
    //calcula o novo salario aplicando o porcentual de reajuste
    salariocorrigido <- salario * (1 + porcentualreajuste) //O cálculo agora considera o salário original(1) mais o reajuste.
    //exibir salario corrigido, multiplicar por 100 pq o reajuste ta em num decimal, precisamos do valor em %
    escreval("o porcentual de reajuste aplicado foi de: ", (porcentualreajuste * 100):0:2, "%")
    escreval("o salario corrigido do funcionario é de: ", salariocorrigido:0:2)
fimalgoritmo
///////////////////////////////////////////////////////////////////////////////////////////
algoritmo "verificar maioridade"
var
    nome : caractere 
    idade : inteiro
    emaior : logico
    funcao emaiordeidade(idadepessoa: inteiro): inteiro
        se idadepessoa >= 18 entao 
            retorne verdadeiro
        senao
            retorne falso
        fimse
    fimfuncao
inicio
    escreva("digite o nome da pessoa: ")
    leia(nome)
    escreva("idade: ")
    leia(idade)
    //chama a funcao emaiordeidade para verificar se é ou nao
    emaior <- emaiordeidade(idade)
    //exibir o resultado c base no valor retornado pelo funcao(como se estivessemos substituindo na funcao, porem aplicando a regra da funcao, o primeiro termo sendo verdade e o segundo falso.)
    se emaior entao 
        escreval(nome,"é maior de idade. ")
    senao
        escreval(nome, " nao é maior de idade. ")
    fimse
fimalgoritmo