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
////////////////////////////////////////////////////////////////////
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
			enquanto j > 0 E numeros[j] > chave faca
				numeros[j + 1] <- numeros[j]
				j <- j - 1//dentro do `enquanto` para garantir que o valor de `j` diminua a cada iteração.
			fimenquanto
			numeros[j + 1] <- chave
		fimpara
fimalgoritmo

