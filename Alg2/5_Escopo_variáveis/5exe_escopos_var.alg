algoritmo "troca por valor"
var 
    num1, num2 : inteiro 
    procedimento troca(x: inteiro, y:inteiro)
    var 
        temp : inteiro //variavel local para armazenar temporariamente o valor de x
    inicio
        temp <- x // armazena o valor de x em uma variavel temporaria
        x <- y //troca os valores, x recebe valor de y
        y <- temp // e y recebe valor da temp

        escreval("dentro do procedimento troca: x= ",x, "e y= ", y)//exibe os valores trocados denrto do procedimento
    fimprocedimento
inicio 
    escreva("digite o primeiro valor (num1): ")
    leia(num1)
    escreva("digite o segundo valor (num2): ")
    leia(num2)
    escreval("valores antes da chamada do procedimento: num1 = ", num1, "e num2= ", num2)//exibe os valores antes de chamar o procedimento
    troca(num1, num2) //chama o procedimento troca, passando os valores de num1 e num2.
    escreval("valores apos a chamada do procedimento: num1= ",num1, "e num2= ",num2)//o num1 e num2 n alteram , porque e passagem por valor, so o x e y que alteram entre eles.
fimalgoritmo
////////////////////////////////////////////////////
algoritmo "troca por referencia"
var 
    num1, num2 : inteiro
    procedimento troca (var x: inteiro, var :inteiro) //agora q usamos ref ao usarmos a troca, vai seguir a mesma regra do que esta no bloco, ou seja vao se inverter os valores de num1 e num2, seguindo a logica do bloco do procedimento, diferente do 
    var
    temp : inteiro // var p/ armazenar temporariamente o valor de x
    inicio 
    temp <- x
    x <- y
    y <- temp 
    fimprocedimento
inicio 
    escreva("digite o primeiro valor num1: ")
    leia(num1)
    escreva("digite o segundo valor: ")
    leia(num2)
    escreval("valores antes da troca: num1= ", num1, "e num2= ",num2)
    troca(num1, num2)
    escreval("valores apos a troca por referencia: num1= ",num1, "e num2= ",num2)
fimalgoritmo
////////////////////////////////////////////////////
algoritmo "troca por variaveis globais"
var 
    num1, num2 : inteiro
    procedimento troca()
        var 
            temp : inteiro
        inicio  
            temp <- num1
            num1 <- num2
            num2 <- temp 
    fimprocedimento 
inicio
    escreva("Digite o primeiro valor (num1): ")
    leia(num1)    
    escreva("Digite o primeiro valor (num2): ")
    leia(num2)
    escreval("valores antes da troca: num1= ",num1, "e num2= "num2)//chama antes da troca
    troca()
    escreval("valores apos a troca: num1= ", num1,"e num2= ", num2)
fimalgoritmo
////////////////////////////////////////////////////
algoritmo "alternativa para var global(usando parametros)"
    procedimento ADICIONA_DESCONTO(valor:real, total:real) 
    inicio
        total <- total - valor //subtrai o valor do desconto do total
        escreva("total com desconto(local): ", total)//essa mudanca afeta apenas a var local "total"
    fimprocedimento
var 
    total: real //var global para armazenar o total inicial
inicio 
    total <- 1000 //inicializa o valor total
    ADICIONA_DESCONTO(50,total) //desconto de 50(valor:real) e "total" atual como argumento 1000
    ADICIONA_DESCONTO(30,total) 
    escreva ("total final nao alterado pelo procedimento: ", total)//esse total eu to pegando do total global(1000) e nao to total local(que seria 970 por exemplo, ja que foi a ultima operacao que a variavel fez dentro do escopo do procedimento)
fimalgoritmo