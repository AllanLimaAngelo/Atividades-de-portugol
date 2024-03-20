programa
{
	
	funcao inicio()
	{
		real alimento, consumo=0.050
		inteiro dias=0
		
		escreva("Informe uma quantidade de um alimento em quilos: ")
		leia(alimento)
	
		enquanto(alimento >= consumo) {
			dias=dias + 1 
			alimento=alimento - consumo
		}

		
		escreva("\nO alimento durará " + dias + " dias")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 320; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {alimento, 6, 7, 8}-{consumo, 6, 17, 7}-{dias, 7, 10, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */