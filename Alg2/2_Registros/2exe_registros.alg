algoritmo "ex complete"
tipo Aluno = registro
    nome : caractere
    idade: inteiro
    notas : vetor[1..3] de real
    media : real
fimregistro
var
    alunos : vetor[1..5] de Aluno
    i, j : inteiro
    expulso: logico
inicio
    // Coleta de informações dos alunos
    para i de 1 ate 5 faca
        escreva("Nome do Aluno ", i, ": ")
        leia(alunos[i].nome)
        escreva("Idade do Aluno ", alunos[i].nome, ": ")
        leia(alunos[i].idade)

        // Verifica se o aluno será expulso
        expulso <- (alunos[i].nome = "Guilherme Porto")
        se expulso entao
            escreval("Aluno ", alunos[i].nome, " foi expulso!")
        senao
            // Coleta das notas do aluno
            para j de 1 ate 3 faca
                escreva("Digite a nota ", j, " do aluno ", alunos[i].nome, ": ")
                leia(alunos[i].notas[j])
            fimpara
        fimse
    fimpara
    // Cálculo da média e exibição dos resultados
    para i de 1 ate 5 faca
        alunos[i].media <- 0
        para j de 1 ate 3 faca
            alunos[i].media <- alunos[i].media + alunos[i].notas[j]
        fimpara
        
        // Calcula a média
        alunos[i].media <- alunos[i].media / 3
        
        // Exibe os dados do aluno com a média formatada
        escreva("Aluno: ", alunos[i].nome, " - Média: ")
        escreval(alunos[i].media:0:2) 
        
        // Verifica se o aluno está aprovado ou reprovado
        se (alunos[i].media >= 6) ou (alunos[i].idade > 30) entao 
            escreval("Status: APROVADO")
        senao
            escreval("Status: REPROVADO")
        fimse
    fimpara
fimalgoritmo
///////////////////////////////////////////////////////////////
algoritmo "estudantes acima de 30 anos"
    tipo estudante = registro
        nome: caractere
        idade: inteiro
        sexo: caractere
        matricula: inteiro
        curso: caractere
    fimregistro
var
    estudantes: vetor[1..10] de estudantes
    i: inteiro
inicio
    para i de 1 ate 10 passo 1 faca
        escreval("Digite o nome do estudante ", i, ": ")
        leia(estudantes[i].nome)
        escreval("Digite a idade do estudante ", i, ": ")
        leia(estudantes[i].idade)
        escreval("Digite o sexo do estudante ", i, " (M/F):")
        leia(estudantes[i].sexo)
        escreval("Digite o número de matrícula do estudante ", i, ":")
        leia(estudantes[i].matricula)
        escreval("Digite o nome do curso do estudante ", i, ": ")
        leia(estudantes[i].curso)
    fimpara
    escreval("Estudantes com mais de 30 anos: ")
    para i de 1 ate 10 passo 1 faca
        se estudantes[i].idade > 30 entao 
            escreva("Nome: ", estudantes[i].nome)
            escreva("Curso: ", estudantes[i].curso)
        fimse
    fimpara
fimalgoritmo
//////////////////////////////////////////////////
algoritmo "Registro Pedagios passando pelas 5 vias"
tipo Registro_pedagios = registro
    nome: caractere
    quilometro: real
    cidade: caractere
    valor: real
fimregistro
var
    i: inteiro
    pedagios: vetor [1..5] de registro_pedagios
    valortotal: real
inicio
    para i de 1 ate 5 passo 1 faca
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
    para i de 1 ate 5 passo 1 faca 
        valortotal <- valortotal + pedagios[i].valor
    fimpara
    escreval("O valor total dos pedagios neste trajeto é: ", valortotal)
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
algoritmo "notas do aluno com vetor"
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
        escreval("Bimestre ",i,": " notas[i])
    fimpara
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
//////////////////////////////////////////////////////////
algoritmo "dados do estudante"
    tipo estudante = registro
        nome: caractere
        idade: inteiro
        sexo: caractere
        matricula: inteiro
        curso: caractere
    fimregistro
var
    estudante: estudante
inicio
    //valor pre definidos:
    estudante.nome <- "gui porto"
    estudante.idade <- 26
    estudante.sexo <- "M"
    estudante.matricula <- 123.1885
    estudante.curso <- "Engenharia de Software"
    escreval("Nome: ", estudante.nome)
    se estudante.idade >= 18 
        escreva("Maior de idade.")
    senao 
        escreva("Menor de idade.")
    fimse
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
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