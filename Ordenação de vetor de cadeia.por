programa
{
	inclua biblioteca Texto --> txt
	
	funcao inicio()
	{
		cadeia vetor[] = {"Fatima", "Adriano", "Zezinho", "Bolão"}
		caracter vetorC[4] 

		obterPrimeiroCaracterVetor(vetor, vetorC)
		imprimirVetor(vetorC)	
		ordenarVetorCadeia(vetor, vetorC)
		imprimirVetorCadeia(vetor)
		
	}

	funcao imprimirVetorCadeia(cadeia vetor[]) {
		para (inteiro i=0; i<4; i++) {
			escreva(vetor[i] +"\t")
		}
	}

	funcao ordenarVetorCadeia(cadeia vetor[], caracter vetorC[]) {
		para (inteiro i=0; i<4; i++) {			
			para (inteiro j=0; j<4-1; j++) {
				se (vetorC[j] > vetorC[j+1]) {
					cadeia aux
					caracter temp
					
					temp = vetorC[j]
					vetorC[j] = vetorC[j+1]
					vetorC[j+1] = temp
					
					aux = vetor[j]
					vetor[j] = vetor[j+1]
					vetor[j+1] = aux
				}
			}
		}
	}

	funcao obterPrimeiroCaracterVetor(cadeia v[], caracter vetorC[]) {
		para (inteiro i=0; i<4; i++) {
			vetorC[i] = txt.obter_caracter(txt.caixa_alta(v[i]), 0)
		}
	}

     funcao imprimirVetor(caracter v[]) {
     	para (inteiro i=0; i<4; i++) {
			escreva(v[i] +"\t")
		}
     }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 126; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */