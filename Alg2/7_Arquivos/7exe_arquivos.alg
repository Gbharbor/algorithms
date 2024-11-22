algoritmo "contar maiores de idade"
var
    arquivo : texto // tipo arquivo sempre sera texto
    nome: caractere
    idade, maiores: inteiro
inicio
    maiores <- 0 //contador 
    atribua("pessoas.txt", arquivo)//atribua(abre o .txt) e associa a var arquivo
    leia(arquivo, nome, idade)//leia(le uma linha e separa os valores(nome/idade))
    enquanto nao(se(EOF(arquivo))) faca //EOF(faz com que leia ate o fim do arquivo)
        se idade >= 18 entao 
            maiores <- maiores + 1
        fimse
        leia(arquivo, nome, idade)// assim le o proximo registro do arquivo, para seguir o loop.
    fimenquanto
    feche(arquivo)//fecha o arquivo p/ liberar recursos do sistema
    escreval("quantidade de pessoas maiores de idade: ", maiores)
fimalgoritmo
//Arquivo chamado `pessoas.txt` esteja formatado da seguinte maneira:
//Maria, 20
//João, 15
//Carlos, 18
//Ana, 22
//Cada linha representa uma pessoa, onde o primeiro campo é o nome e o segundo campo é a idade.
//////////////////////////////////////////////////////////////////
algoritmo "registrar pessoa em agenda"
var
    agenda : texto
    idade : inteiro
    altura : real 
    nome, sexo, doador: caractere
inicio
      // Leitura dos dados da pessoa
    escreva("Digite o nome da pessoa: ")
    leia(nome)
    escreva("Digite a idade da pessoa: ")
    leia(idade)
    escreva("Digite a altura da pessoa (em metros, ex: 1.75): ")
    leia(altura)
    escreva("Digite o sexo da pessoa (M para masculino, F para feminino): ")
    leia(sexo)
    escreva("A pessoa é doadora de órgãos? (S para Sim, N para Não): ")
    leia(doador)
    atribua("AGENDA.txt",agenda)
    escreval(AGENDA, nome,", ", idade,", ",altura:0:2,", ",sexo,", ",doador,", ")
    fecha(agenda)
    escreval("dados das pessoas registrados com sucesso na AGENDA.")
fimalgoritmo
//Se os dados inseridos forem:
//Nome: João
//Idade: 30
//Altura: 1.80
//Sexo: M
//Doador: N
//O conteúdo do arquivo `AGENDA.txt` será:
//João, 30, 1.80, M, N