//Aqui está o algoritmo em pseudocódigo para ler dados de uma pessoa informados pelo usuário e salvá-los em um arquivo. O algoritmo pergunta ao usuário se deseja adicionar um novo registro a cada inserção.

Algoritmo "Registro de Pessoas em Arquivo"
Tipo
    Pessoa = Registro
        nome: caractere
        endereco: caractere
        sexo: caractere
        idade: inteiro
    FimRegistro
FimTipo
Var
    arquivo: Arquivo de Pessoa
    pessoa: Pessoa
    continuar: caractere
Inicio
    // Abrir o arquivo para escrita (adiciona novos registros no final)
    AbrirArquivo(arquivo, "dados_pessoas.txt", ESCRITA)  
    // Loop para inserção de novos registros
    repetir
        // Leitura dos dados da pessoa
        Escreva("Digite o nome da pessoa: ")
        Leia(pessoa.nome)
        Escreva("Digite o endereço da pessoa: ")
        Leia(pessoa.endereco)
        Escreva("Digite o sexo da pessoa (M/F): ")
        Leia(pessoa.sexo)
        Escreva("Digite a idade da pessoa: ")
        Leia(pessoa.idade)   
        // Gravar o registro no arquivo
        Escrever(arquivo, pessoa)   
        // Perguntar ao usuário se deseja adicionar outro registro
        Escreva("Deseja inserir outro registro? (S/N): ")
        Leia(continuar)
    até (continuar = "N" ou continuar = "n")
    // Fechar o arquivo
    FecharArquivo(arquivo)
    Escreva("Registros salvos com sucesso no arquivo 'dados_pessoas.txt'.")
FimAlgoritmo


//### Explicação
//1. **Tipo `Pessoa`**: Estrutura de dados para armazenar `nome`, `endereco`, `sexo`, e `idade`.
//2. **Abrir o Arquivo**: O arquivo `dados_pessoas.txt` é aberto no modo de escrita, para adicionar registros.
//3. **Loop de Inserção**:
//   - O algoritmo lê os dados da pessoa a partir da entrada do usuário.
//   - Grava o registro no arquivo.
//   - Pergunta ao usuário se deseja continuar, repetindo o processo até que o usuário responda "N" ou "n".
//4. **Fechar o Arquivo**: Ao final, o arquivo é fechado, e uma mensagem de confirmação é exibida.
//Esse algoritmo permite que o usuário adicione quantos registros desejar e salva cada registro individualmente no arquivo `dados_pessoas.txt`.