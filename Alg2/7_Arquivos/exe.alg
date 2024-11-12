Suponha que o arquivo chamado `pessoas.txt` esteja formatado da seguinte maneira:
```
Maria, 20
João, 15
Carlos, 18
Ana, 22
```

Cada linha representa uma pessoa, onde o primeiro campo é o nome e o segundo campo é a idade.

### Algoritmo VisualG

```pascal
algoritmo "Contar_Maiores_De_Idade"
var
    arquivo : texto
    nome : caractere
    idade, qtdMaiores : inteiro

inicio
    // Inicializa a contagem de maiores de idade
    qtdMaiores <- 0

    // Abre o arquivo de registro de pessoas
    atribua("pessoas.txt", arquivo)
    leia(arquivo, nome, idade) // Lê o primeiro registro do arquivo

    // Lê o arquivo até o final
    enquanto nao(se(EOF(arquivo))) faca
        // Verifica se a pessoa é maior de idade
        se idade >= 18 entao
            qtdMaiores <- qtdMaiores + 1
        fimse

        // Lê o próximo registro do arquivo
        leia(arquivo, nome, idade)
    fimenquanto

    // Fecha o arquivo
    feche(arquivo)

    // Exibe o número de pessoas maiores de idade
    escreval("Quantidade de pessoas maiores de idade: ", qtdMaiores)
fimalgoritmo
/////////////////////////////////////////////////////////////////////////////////
algoritmo "Registrar_Pessoa_Em_Agenda"
var
    AGENDA : texto
    nome : caractere
    idade : inteiro
    altura : real
    sexo, doadorOrgaos : caractere

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
    leia(doadorOrgaos)

    // Abre o arquivo AGENDA para escrita (ou cria se não existir)
    atribua("AGENDA.txt", AGENDA)
    
    // Grava os dados da pessoa no arquivo AGENDA
    escreva(AGENDA, nome, ", ", idade, ", ", altura:0:2, ", ", sexo, ", ", doadorOrgaos, "\n")

    // Fecha o arquivo AGENDA
    feche(AGENDA)

    escreval("Dados da pessoa registrados com sucesso na AGENDA.")
fimalgoritmo



Se os dados inseridos forem:
- Nome: João
- Idade: 30
- Altura: 1.80
- Sexo: M
- Doador de Órgãos: N

O conteúdo do arquivo `AGENDA.txt` será:
João, 30, 1.80, M, N