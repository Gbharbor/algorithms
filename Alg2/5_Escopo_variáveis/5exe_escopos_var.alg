algoritmo "troca_por_valor"
var 
    num1 : inteiro
    num2 : inteiro 
procedimento troca(x: inteiro, y:inteiro)
    var 
        temp : inteiro //var local para armazenar temp o x
    inicio
        temp <- x // armazena x em uma var temporaria
        x <- y 
        y <- temp 
    escreval("dentro do procedimento troca: x= ",x, "e y= ", y)
fimprocedimento
inicio 
    escreva("digite o primeiro valor (num1): ")
    leia(num1)
    escreva("digite o segundo valor (num2): ")
    leia(num2)
    escreval("valores antes da chamada do procedimento: num1 = ", num1, "e num2= ", num2)
    troca(num1, num2) //chama o procedimento troca.
    escreval("valores apos a chamada do procedimento: num1= ",num1, "e num2= ",num2)//o num1 e num2 n alteram , porque e passagem por valor, so o x e y que alteram entre eles.
fimalgoritmo
//==================================================================//
algoritmo "troca_por_referencia"
var 
    num1: inteiro
    num2 : inteiro
procedimento troca (var x: inteiro, var y :inteiro) //agora q usamos ref ao usarmos a troca, vai seguir a mesma regra do que esta no bloco, ou seja vao se inverter os valores de num1 e num2, seguindo a logica do bloco do procedimento.
    var
        temp : inteiro 
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
//==================================================================//
algoritmo "troca por variaveis globais"
var 
    num1 : inteiro
    num2 : inteiro
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
    escreval("valores antes da troca: num1= ",num1, "e num2= "num2)
    troca()
    escreval("valores apos a troca: num1= ", num1,"e num2= ", num2)
fimalgoritmo
//==================================================================//
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
    escreva ("total final nao alterado pelo procedimento: ", total)//esse total eu to pegando do total global(1000) e nao o total local(que seria 950, ja que foi a ultima operacao que a variavel fez dentro do escopo do procedimento)
fimalgoritmo
//==================================================================//
algoritmo "inverter valores"
var 
    a:inteiri
    b : inteiro
//procedimento para trocar os valores de duas variaveis
procedimento trocarvalores (var x: inteiro , var y: inteiro)
    var
        temp: inteiro
    inicio
        temp <- x
        x <- y
        y <- temp
fimprocedimento
inicio
    //leitura das variaveis
    escreva("digite o primeiro valor(a): ")
    leia(a)
    escreva("digie o segundo valor(b): ")
    leia(b)
    //exibir os valores antes das trocas
    escreval("valores antes da troca: a= ", a," e b=", b)
    //chama o procedimento agr para  inverter os valores.
    escreval("valores apos a troca: a=",a," e b= "b)
fimalgoritmo
//==================================================================//
algoritmo "calcularIMC"
var
    peso: real
    altura: real
    imc: real //var global
procedimento calcular_imc(peso: real, altura:real)
    inicio
        imc <- peso / (altura * altura) // IMC = peso/(altura^2)
fimprocedimento
inicio
    escreva("Digite seu peso: ")
    leia(peso)
    escreva("Digite sua altura: ")
    leia(altura)
    calcular_imc(peso, altura)
    escreval("Seu IMC é: ",imc)
fimalgoritmo
//==================================================================//
algoritmo "soma_entre_numeros"
var
    num1: inteiro
    num2: inteiro
    soma: inteiro //var global
procedimento soma_entre_numeros(a: inteiro, b: inteiro)
    var 
        i: inteiro
    inicio
        soma <- 0 //inicializa a soma
        para i de a + 1 ate b - 1 faca // exe={3,7} => loop={4..6}
            soma <- soma + i // (0+4=4)+(4+5=9)+(9+6=15)
        fimpara
fimprocedimento
inicio
    escreva("Digite o primeiro número positivo: ")
    leia(num1)
    escreva("Digite o segundo número positivo: ")
    leia(num2)
        //verificar se os numeros sao positivos e se o primeiro e menor que o segundo.
        se (num1 > 0) e (num2 > 0) e (num1 < num2) entao 
            soma_entre_numeros(num1,num2) //a,b => exe={3,7}
            escreval("A soma dos numeros entre ",num1, " e ", num2," é: ", soma)//15
        senao
            escreval("Apenas valores positivos, e o primeiro numero deve ser menor que o segundo! ")
        fimse
fimalgoritmo