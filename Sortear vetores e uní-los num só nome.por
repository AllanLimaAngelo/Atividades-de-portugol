programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		const inteiro TAMANHO = 20
		cadeia vetor1[] = {"01", "02", "03", "04", "05"}
		cadeia vetor2[] = {"AA", "AB", "AC", "AD", "AE"}
		cadeia vetor4[] = {"AA", "AB", "AC", "AD", "AE"}
		
		cadeia vetor3[TAMANHO] //produtos sorteados

		inteiro sorteio1, sorteio2, sorteio3
		cadeia item
		logico igual
		
		para (inteiro i=0; i<TAMANHO; i++){
			faca {
				igual = falso
				
				sorteio1 = u.sorteia(0, 4)
				sorteio2 = u.sorteia(0, 4)
				sorteio3 = u.sorteia(0, 4)
				
				item = "Item " + vetor1[sorteio1] + " " + vetor2[sorteio2] + " " + vetor3[sorteio3]
	
				para (inteiro j=0; j<TAMANHO; j++){
					se (item == vetor3[j]) {
						igual = verdadeiro
						pare
					}					
				}
	
				se (nao igual)
					vetor3[i] = item
			} enquanto (igual)
		}

		para (inteiro i=0; i<TAMANHO; i++){
			escreva(vetor3[i] +"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 538; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor1, 8, 9, 6}-{vetor2, 9, 9, 6}-{vetor3, 12, 9, 6}-{sorteio1, 14, 10, 8}-{sorteio2, 14, 20, 8}-{item, 15, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */