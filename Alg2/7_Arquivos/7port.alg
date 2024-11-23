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
/////////////////////////////////////////////////////////////////////////////////////
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