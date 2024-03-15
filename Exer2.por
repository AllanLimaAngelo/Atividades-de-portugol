/*
 * Crie um programa que leia 4 notas de um aluno.
 * Receba o nome desse aluno e verifique a média das 4 notas.
 * 
 * Se a nota for menor ou igual a 5, informe que o aluno está reprovado
 * Se a nota for maior que 5 e menor ou igual a 6, informe que o aluno está de recuperação
 * Se a nota for maior que 6, informe que o aluno está aprovado
 * 
 */
 
 programa
{
	
	funcao inicio()
	{	
		cadeia nome
		real n1, n2, n3, n4, media

		escreva("Informe o seu nome: ")
       	leia(nome)		
		escreva("Informe a primeira nota: ")
       	leia(n1)        
       	escreva("Informe a segunda nota: ")
       	leia(n2)       
        	escreva("Informe a terceira nota: ")
        	leia(n3)
        	escreva("Informe a quarta nota: ")
        	leia(n4)

        	media = (n1 + n2 + n3 + n4) / 4 

        	escreva("Sua média é: " + media + "\n")

        	se (media <= 5) {
        		escreva(nome +" esta reprovado.") 
        	} senao se ((media > 5) e (media <= 6 ))  {
        		escreva(nome +" esta de recuperação.")
        	} senao se (media > 6) {
        		escreva(nome +" esta aprovado.")
        	}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 371; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */