//CORRIJA ESSE ALGORITMO.
algoritmo “OrdenaInsert”
	
	var
		números : vetor[1..10] de real
		i, j, chave : inteiro
	inicio
		para i de 1 ate 10 passo 1 faca
			leia(numeros[i])
		fimpara
		
		para i de 2 ate 10 passo 1 faca
			chave <- numeros[i]
			j <- i - 1
			enquanto j > 0 .E. numeros[j] > chave faca
				numeros[j + 1] <- numeros[j]
			fimenquanto
			numeros[j] <- chave
		fimpara
	fimalgoritmo

//1. **Erro de Atualização de `j` no Laço `enquanto`**:
//   - No algoritmo original de ordenação por inserção, após cada iteração do laço `enquanto`, o valor de `j` deve ser decrementado para verificar o próximo elemento à esquerda. Neste código, `j` não está sendo decrementado, o que resulta em um laço infinito.
//   - **Correção**: Adicionar `j <- j - 1` dentro do `enquanto` para garantir que o valor de `j` diminua a cada iteração.

//2. **Posição Incorreta de Inserção da `chave`**:
//   - Após o laço `enquanto`, o valor da `chave` deve ser inserido em `numeros[j + 1]`, e não em `numeros[j]`. No código, a `chave` é colocada diretamente em `numeros[j]`, o que pode sobrescrever um valor incorretamente.
//   - **Correção**: Alterar `numeros[j] <- chave` para `numeros[j + 1] <- chave`.

//### Algoritmo Corrigido
algoritmo “OrdenaInsert”
	
	var
		numeros : vetor[1..10] de real
		i, j : inteiro
		chave : real
	inicio
		// Leitura dos números
		para i de 1 ate 10 passo 1 faca
			leia(numeros[i])
		fimpara
		
		// Insertion Sort
		para i de 2 ate 10 passo 1 faca
			chave <- numeros[i]
			j <- i - 1
			enquanto j > 0 .E. numeros[j] > chave faca
				numeros[j + 1] <- numeros[j]
				j <- j - 1
			fimenquanto
			numeros[j + 1] <- chave
		fimpara
fimalgoritmo

//Essas duas correções garantem que o algoritmo funcione corretamente como o Insertion Sort original.