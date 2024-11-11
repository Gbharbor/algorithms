Algoritmo "Cadastro_Cidade_Parana"
        tipo Cidade = registro
            nome: caractere
            populacao: inteiro
            densidade_demografica: real
        fimregistro

    var
        cidade : Cidade

    Inicio
        // Cadastro dos dados da cidade
        escreval("Cadastro de Cidade do Estado do Paraná")
        
        escreva("Digite o nome da cidade: ")
        leia(cidade.nome)
        
        escreva("Digite a população da cidade: ")
        leia(cidade.populacao)
        
        escreva("Digite a densidade demográfica da cidade (habitantes/km²): ")
        leia(cidade.densidade_demografica)
        
        // Verificação se a cidade é a capital
        se (cidade.nome = "Curitiba") entao
            escreval("A cidade cadastrada é a capital do estado do Paraná.")
        senao
            escreval("A cidade cadastrada NÃO é a capital do estado do Paraná.")
        fimse
    Fimalgoritmo
