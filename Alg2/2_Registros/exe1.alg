algoritmo "Exemplo de Registro"
tipo Pessoa = registro
    nome : caractere
    idade : inteiro
    altura : real
    doadorOrgaos : logico
  fimregistro

var
  cidadao : Pessoa

inicio
  leia(cidadao.nome)
  leia(cidadao.idade)
  leia(cidadao.altura)
  leia(cidadao.doadorOrgaos)

  escreva("Nome: ", cidadao.nome)
  escreva("Idade: ", cidadao.idade)
  escreva("Altura: ", cidadao.altura)
  escreva("Doador de Órgãos: ", cidadao.doadorOrgaos)
fimalgoritmo