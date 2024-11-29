algoritmo "contar maiores de idade"
var
    arquivo: texto // Variável para manipular o arquivo
    nome: caractere
    idade, maiores: inteiro
inicio
    maiores <- 0 // Inicializa o contador

    // Associa o arquivo "pessoas.txt" à variável arquivo
    atribua("pessoas.txt", arquivo)

    // Leitura inicial do arquivo
    leia(arquivo, nome, idade)

    // Loop para processar todos os registros do arquivo
    enquanto nao(EOF(arquivo)) faca
        se idade >= 18 entao
            maiores <- maiores + 1 // Incrementa o contador para maiores de idade
        fimse
        leia(arquivo, nome, idade) // Lê o próximo registro do arquivo
    fimenquanto

    // Fecha o arquivo para liberar recursos do sistema
    feche(arquivo)

    // Exibe o resultado final
    escreval("Quantidade de pessoas maiores de idade: ", maiores)
fimalgoritmo
//Arquivo chamado `pessoas.txt` esteja formatado da seguinte maneira:
//Maria, 20
//João, 15
//Carlos, 18
//Ana, 22
//Cada linha representa uma pessoa, onde o primeiro campo é o nome e o segundo campo é a idade.
//==================================================================//
algoritmo "registrar pessoa em agenda"
var
    agenda : texto
    idade : inteiro
    altura : real
    nome, sexo, doador: caractere
inicio
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

    // Abrir ou criar o arquivo AGENDA.txt
    atribua("AGENDA.txt", agenda)

    // Escrever os dados no arquivo
    escreval(agenda, nome, ", ", idade, ", ", altura:0:2, ", ", sexo, ", ", doador)

    // Fechar o arquivo
    fecha(agenda)

    // Mensagem ao usuário
    escreval("Dados da pessoa registrados com sucesso na AGENDA.")
fimalgoritmo

//Se os dados inseridos forem:
//Nome: João
//Idade: 30
//Altura: 1.80
//Sexo: M
//Doador: N
//O conteúdo do arquivo `AGENDA.txt` será:
//João, 30, 1.80, M, N
//==================================================================//
//ler registros de um arquivo de estudantes, apresentar a quantidade de estudantes lidos e identificar o estudante mais velho:
algoritmo "processamento de estudante"
tipo estudante = registro
        id: inteiro
        nome: caractere
        idade: inteiro
    fimregistro
var
    arquivo: Arquivo de Estudante // Arquivo que contém registros de estudantes
    estudante: Estudante
    estudante_mais_velho: Estudante
    quantidade: inteiro
    maior_idade: inteiro
inicio
    quantidade <- 0 //n preocessamos nenhum estudante, entao deve comecar por 0
    maior_idade <- -1 //garante q a idade lida sera maior q -1 e atualiza a variavel
    AbrirArquivo(arquivo, "estudantes.txt", LEITURA) //Leitura nao e uma var e sim um modo de operacao para ler o arquivo.
    //verifica se o arquivo foi aberto corretamente
    se EOF(arquivo) entao 
        escreva("Erro ao abrir arquivo, ou arquivo vazio.")
        pare
    fimse
    enquanto nao EOF(arquivo) faca
        ler(arquivo, estudante)
        quantidade <- quantidade + 1 //contador de estudantes
        se (estudante.idade > maior_idade) entao //verificar se o estudante atual e mais velho.
            maior_idade <- estudante.idade
            estudante_mais_velho <- estudante
        fimse
    fimenquanto
    FecharArquivo(arquivo)
    escreva("quantidade de estudantes lidos: ", quantidade)
    se quantidade > 0 entao
        escreva("O estudante mais velho é: ", estudante_mais_velho.nome, "com: ", estudante_mais_velho.idade,"anos.")
    senao
        escreva("Nenhum estudante foi lido do arquivo.")
    fimse
fimalgoritmo
//==================================================================//
algoritmo "registro de pessoas em arquivo"
tipo pessoa = registro
    nome: caractere
    idade: inteiro
    sexo: caractere
fimregistro
var
    arquivo: arquivo de Pessoa
    pessoa: Pessoa
    continuar: caractere
inicio
    AbrirArquivo(arquivo, "dados.txt", ACRESCENTAR) //Acrescentar n é uma var, e sim um componente de arquivo, para dizer q quero adicionar novos registros.
    //loop para novos registros
    repetir
        Escreva("Digite o nome da pessoa: ")
        Leia(pessoa.nome)
        Escreva("Digite o sexo da pessoa (M/F): ")
        Leia(pessoa.sexo)      
        Escreva("Digite a idade da pessoa: ")
        Leia(pessoa.idade)
        escrever(arquivo, pessoa) //gravar o registro no arquivo
      
        escreva("Deseja inserir outro registro? (S/N): ")
        leia(continuar)
        //validar entrada do usuario:
        enquanto(continuar <> "S") e (continuar <> "s") ou (continuar <> "N") ou (continuar <> "n") faca
            escreva("Opcao invalida! Deseja inserir otro registro? (S/N)")
        fimenquanto
    ate (continuar= "N") ou (continuar = "n")
    FecharArquivo(arquivo)
    Escreva("Registros salvos com sucesso no arquivo 'dados_pessoas.txt'.")
FimAlgoritmo