programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		sorteioEstoque()
	}

	funcao sorteioEstoque(){
		cadeia produtos[] = {"camisa","camiseta","calça","Bermuda"}
		cadeia cores[] = {"vermelho","preto","amarelo","azul","branco","verde"}
		cadeia tamanho[] = {"PP","P","M","G","GG"}
		cadeia estoque[20][3]
		inteiro p = 20	                      
														
		
		para (inteiro i=0; i<p; i++){
			estoque[i][0] = produtos[u.sorteia(0,3)]
			estoque[i][1] = cores[u.sorteia(0,5)]
			estoque[i][2] = tamanho[u.sorteia(0,4)]
			
		}	
				 
	}

	funcao repetido(){
		inteiro p = 20
		logico unico =falso

		para(inteiro i=0; i<p; i++){
			se(estoque[i][0] == )
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 669; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {estoque, 14, 9, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */