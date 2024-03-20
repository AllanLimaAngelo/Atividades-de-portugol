programa
{
	
	funcao inicio()
	{
		real valorDeposito, valorFinal
		inteiro meses
		
		escreva("Digite o valor do depósito em poupança: ")
 		leia(valorDeposito)
		escreva("Digite o número de meses de aplicação: ")
    		leia(meses)

    		valorFinal = (valorDeposito + (valorDeposito * 0.05 * meses))

    		escreva("O valor após " + meses + " meses de aplicação na poupança é: " + valorFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 406; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */