algoritmo "Algoritmo de Registro de Pessoa"
tipo pessoa = registro
    nome: caractere
    idade: inteiro
    altura: real
    doador: logico
fimregistro
var 
    cidadao: Pessoa
inicio
    leia(cidadao.nome)
    leia(cidadao.idade)
    leia(cidadao.altura)
    leia(cidadao.doador)

    escreva("Nome: ", cidadao.nome)
    escreva("idade: ", cidadao.idade)
    escreva("Altura: ", cidadao.altura)
    escreva("doador: ", cidadao.doador)
fimalgoritmo
///////////////////////////////////////////////////////////////////
algoritmo "Algoritmo de Informações do Produto"
tipo Produto = registro
    nome: caractere
    preco: real
    quantidade: inteiro
fimregistro
inicio
    escreva("Nome do Prod.: ")
    leia(produto.nome)
    escreva("Digite o preco :")
    leia(produto.preco)
    escreva("digite a quantidade: ")
    leia(produto.quantidade)
    escreval("Informacoes do Produto:")
    escreval("Nome do Produto: ", produto.nome)
    escreval("Preco: R$ ", produto.preco:0:2)//ate 2 casa decimal
    escreval("Quantidade em Estoque: ", produto.quantidade)
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
algoritmo "dados do aluno com vetor"
tipo aluno = registro
    nome:caractere
fimregistro
var
    aluno: aluno
    notas: vetor [1..4] de real
    i : inteiro
inicio
    escreva("Digite o nome do aluno: ")
    leia(aluno.nome)

    para i de 1 ate 4 passo 1 faca
        escreva("Digite a nota do ",i," bimestre: ")
        leia(notas[i])
    fimpara
    escreval("dados do aluno")
    escreval("Nome: ", aluno.nome)
    escreval("Notas: ")
    para i de 1 ate 4 passo 1 faca
        escreval("Bimesrte ",i,": " notas[i])
    fimpara
fimalgoritmo
/////////////////////////////////////////////////////////////////////////

algoritmo "Registro Pedagios passando pelas 10 vias"
tipo Registro_pedagios = registro
    nome: caractere
    quilometro: real
    cidade: caractere
    valor: real
fimregistro
var
    i: inteiro
    pedagios: vetor [1..10] de registro_pedagios
    valortotal: real
inicio
    para i de 1 ate 10 passo 1 faca
        escreva("Digite o nome da rodovia do pedagio: ", i,": ")
        leia(pedagios[i].nome)
        escreva("Digite o Km da rodovia: ",i,": ")
        leia(pedagios[i].quilometro)
        escreva("Digite a cidade: ",i,": ")
        leia(pedagios[i].cidade)
        escreva("Valor do Pedagio: ",i,": ")
        leia(pedagios[i].valor)
    fimpara
    valortotal <- 0.0
    para i de 1 ate 10 passo 1 faca 
        valortotal <- valortotal + pedagios[i].valor
    fimpara
    escreval("O valor total dos pedagios neste trajeto é: ", valortotal)
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
        algoritmo "Cadastro de Cidades do Paraná"
        tipo cidade = registro
            nome : caractere
            populacao : inteiro
            densidade : real
        fimregistro
        var
            cidade : cidade
        inicio
            escreval("Cadastro de Cidade do Estado do Paraná:")
            escreva("Digite o nome da cidade: ")
            leia(cidade.nome)
            escreva("Digite a população da cidade: ")
            leia(cidade.populacao)
            escreva("Digite a densidade demográfica (hab/km²): ")
            leia(cidade.densidade)
        
            se (cidade.nome = "Curitiba") entao
                escreval("A cidade cadastrada é a capital do Paraná.")
            senao
                escreval("Cidade cadastrada com sucesso!")
            fimse
        fimalgoritmo
/////////////////////////////////////////////////////////////////////////
algoritmo "inverter valores"
var 
    a, b : inteiro
//procedimento para trocar os valores de duas variaveis
    procedimento trocarvalores (var x: inteiro , var y: inteiro)
    var
        temp: inteiro
    inicio
        temp <- x
        x <- y
        y <- temp
    fimprocedimento
inicio
    //leitura das variaveis
    escreva("digite o primeiro valor(a): ")
    leia(a)
    escreva("digie o segundo valor(b): ")
    leia(b)
    //exibir os valores antes das trocas
    escreval("valores antes da troca: a= ", a," e b=", b)
    //chama o procedimento agr para  inverter os valores.
    escreval("valores apos a troca: a=",a," e b= "b)
fimalgoritmo