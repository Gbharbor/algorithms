algoritmo "Exemplo de Registro"
tipo Pessoa = registro
    nome : caractere
    idade : inteiro
    altura : real
    doadorOrgaos : logico
  fimregistro

var
  cidadao : Pessoa

inicio
  leia(cidadao.nome)
  leia(cidadao.idade)
  leia(cidadao.altura)
  leia(cidadao.doadorOrgaos)

  escreva("Nome: ", cidadao.nome)
  escreva("Idade: ", cidadao.idade)
  escreva("Altura: ", cidadao.altura)
  escreva("Doador de Órgãos: ", cidadao.doadorOrgaos)
fimalgoritmo
///////////////////////////////////////////////////////////////////
algoritmo "Informações do Produto"
var
   nomeProduto : caractere
   precoProduto : real
   quantidadeEstoque : inteiro
inicio
   escreva("Digite o nome do produto: ")
   leia(nomeProduto)
   
   escreva("Digite o preço do produto: ")
   leia(precoProduto)
   
   escreva("Digite a quantidade em estoque: ")
   leia(quantidadeEstoque)

   escreva("\nInformações do Produto:\n")
   escreva("Nome do Produto: ", nomeProduto, "\n")
   escreva("Preço: R$ ", precoProduto, "\n")
   escreva("Quantidade em Estoque: ", quantidadeEstoque, "\n")
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
algoritmo "Dados do Aluno com Vetor"
tipo Aluno = registro
      nome : caractere
   fimregistro

var
   aluno : Aluno
   notas : vetor[1..4] de real
   i : inteiro
inicio
   escreva("Digite o nome do aluno: ")
   leia(aluno.nome)

   para i de 1 ate 4 passo 1 faca
      escreva("Digite a nota do ", i, "º bimestre: ")
      leia(notas[i])
   fimpara

   escreva("\nDados do Aluno:\n")
   escreva("Nome: ", aluno.nome, "\n")
   escreva("Notas:\n")
   para i de 1 ate 4 passo 1 faca
      escreva("Bimestre ", i, ": ", notas[i], "\n")
   fimpara
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
algoritmo "RegistroPedagios"
tipo Registro_pedagios = registro
    nome: caractere
    quilometro: real
    cidade: caractere
    valor: real
fimregistro

var
    i: inteiro
    pedagios: vetor[1..10] de Registro_pedagios
    valorTotal: real

inicio
    para i de 1 ate 10 passo 1 faca
        escreva("Digite o nome da rodovia da praça de pedágio ", i, ": ")
        leia(pedagios[i].nome)
        escreva("Digite o quilômetro da rodovia onde fica o pedágio ", i, ": ")
        leia(pedagios[i].quilometro)            
        escreva("Digite a cidade onde fica o pedágio ", i, ": ")
        leia(pedagios[i].cidade)   
        escreva("Digite o valor do pedágio ", i, ": R$ ")
        leia(pedagios[i].valor)
    fimpara

    valorTotal <- 0.0
    para i de 1 ate 10 passo 1 faca
        valorTotal <- valorTotal + pedagios[i].valor
    fimpara

    escreval("O valor total dos pedágios neste trajeto é: R$ ", valorTotal)
fim
fimalgoritmo
/////////////////////////////////////////////////////////////////////////
algoritmo "Cadastro_Cidade_Parana"
tipo Cidade = registro
    nome: caractere
    populacao: inteiro
    densidade_demografica: real
fimregistro

var
    cidade : Cidade

inicio
    escreval("Cadastro de Cidade do Estado do Paraná")
    
    escreva("Digite o nome da cidade: ")
    leia(cidade.nome)
    
    escreva("Digite a população da cidade: ")
    leia(cidade.populacao)
    
    escreva("Digite a densidade demográfica da cidade (habitantes/km²): ")
    leia(cidade.densidade_demografica)
    
    se (cidade.nome = "Curitiba") entao
        escreval("A cidade cadastrada é a capital do estado do Paraná.")
    senao
        escreval("A cidade cadastrada NÃO é a capital do estado do Paraná.")
    fimse
fimalgoritmo
/////////////////////////////////////////////////////////////////////////


algoritmo "InverterValores"
var
    a, b : inteiro

// Procedimento para trocar os valores de duas variáveis
procedimento TrocarValores(var x: inteiro, var y: inteiro)
var
    temp : inteiro
inicio
    temp <- x
    x <- y
    y <- temp
fimprocedimento

inicio
    // Leitura das variáveis
    escreva("Digite o primeiro valor (a): ")
    leia(a)
    escreva("Digite o segundo valor (b): ")
    leia(b)

    // Exibe os valores antes da troca
    escreval("Valores antes da troca: a = ", a, " e b = ", b)

    // Chama o procedimento para trocar os valores
    TrocarValores(a, b)

    // Exibe os valores após a troca
    escreval("Valores após a troca: a = ", a, " e b = ", b)
fimalgoritmo
