Algoritmo "RegistroPedagios"
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
        para i de 1 ate 10 passo 1 faça
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
        para i de 1 ate 10 passo 1 faça
            valorTotal <- valorTotal + pedagios[i].valor
        fimpara

        escreval("O valor total dos pedágios neste trajeto é: R$ ", valorTotal)
    fim
Fimalgoritmo

//escreva um algoritmo em visualg que registre os dados de 10 pracas de pedagios. Para cada praca registe o nome da rodovia, o quilometro da rodovia onde fica esse pedagio, a cidade onde fica esse pedagio e seu valor. No final calcule o valor total dos pedagios neste trajeto.
//Digite o nome da rodovia da praça de pedágio 1: BR-101
//Digite o quilômetro da rodovia onde fica o pedágio 1: 50
//Digite a cidade onde fica o pedágio 1: São Paulo
//Digite o valor do pedágio 1: R$ 15.00
//(E assim por diante para as 10 praças de pedágio.)
//valorTotal <- 0.0
//valorTotal <- valorTotal + 15.00  // Primeiro pedágio
//valorTotal <- valorTotal + 10.00  // Segundo pedágio
//valorTotal <- valorTotal + 20.00  // Terceiro pedágio
//...  // E assim por diante para as outras 7 praças
//O valor total dos pedágios neste trajeto é: R$ 150.00
