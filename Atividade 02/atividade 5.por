programa
{
	inclua biblioteca Tipos-->t
	inclua biblioteca Matematica-->m
	
	funcao inicio()
	{

		real  numRepC, numRepD, numRep
		real perRepC, perAproD, turmaC = 60.0, turmaD = 20.0, perRep
		
    		escreva("Digite o percentual de alunos reprovados na turma C: ")
    		leia(perRepC)
    		escreva("Digite o percentual de alunos aprovados na turma D: ")
    		leia(perAproD)
		
    		numRepC = ((perRepC / 100) * turmaC)
    		numRepD = turmaD - ((perAproD / 100) * turmaD)

    		numRep = numRepC + numRepD

    		perRep = (numRep / (turmaC + turmaD)) * 100

    		escreva("\nO número de alunos reprovados na turma C: ", t.real_para_inteiro(numRepC))
    		escreva("\nO número de alunos reprovados na turma D: ", t.real_para_inteiro(numRepD))
    		escreva("\nA percentagem de alunos reprovados em relação ao total de alunos das duas turmas: " + perRep + "%")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 736; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */