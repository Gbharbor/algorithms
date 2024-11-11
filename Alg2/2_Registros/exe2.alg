algoritmo "Informações do Produto"
var
   nomeProduto : caractere
   precoProduto : real
   quantidadeEstoque : inteiro
inicio
   // Leitura dos dados do produto
   escreva("Digite o nome do produto: ")
   leia(nomeProduto)
   
   escreva("Digite o preço do produto: ")
   leia(precoProduto)
   
   escreva("Digite a quantidade em estoque: ")
   leia(quantidadeEstoque)

   // Exibição dos dados do produto
   escreva("\nInformações do Produto:\n")
   escreva("Nome do Produto: ", nomeProduto, "\n")
   escreva("Preço: R$ ", precoProduto, "\n")
   escreva("Quantidade em Estoque: ", quantidadeEstoque, "\n")
fimalgoritmo

//Escreva um algoritmo que leia e exiba na tela o nome, o seu preco e a quantidade em estoque de jum produto na loja.
//Digite o nome do produto: Camisa Polo
//Digite o preço do produto: 79.90
//Digite a quantidade em estoque: 50
//Informações do Produto:
//Nome do Produto: Camisa Polo
//Preço: R$ 79.9
//Quantidade em Estoque: 50