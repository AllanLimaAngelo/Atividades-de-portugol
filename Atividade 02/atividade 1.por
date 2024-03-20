programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		real salario, novoSalario
		
		escreva("Digite o salário do funcionário: ")
    		leia(salario)

    		novoSalario = (salario * 1.15)

    		escreva("O novo salário com reajuste de 15%: R$ " + m.arredondar(novoSalario, 2))
	}    		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */