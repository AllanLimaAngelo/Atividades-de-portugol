programa
{
	
	funcao inicio()
	{
		real valComb, iniKm, finKm, ltComb, valRec, mediaConsumo, lucro
    
    		escreva("Digite a marcação do odômetro (Km) no início do dia: ")
    		leia(iniKm)
    		escreva("Digite a marcação (Km) no final do dia: ")
    		leia(finKm)
    		escreva("Digite o número de litros de combustível gasto: ")
   		leia(ltComb)
	   	escreva("Digite o valor total (R$) recebido dos passageiros: ")
	    	leia(valRec)

    
    		valComb = 7.50 * ltComb

    
   	 	mediaConsumo = (finKm - iniKm) / ltComb

    
    		lucro = valRec - valComb

    
    		escreva("\nA média do consumo em Km/L é: ", mediaConsumo)
    		escreva("\nO lucro líquido do dia é: R$ ", lucro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */