/*
 * 	1) Uma clínica tem necessidade de informar o IMC (Índice de Massa Corporal) dos seus pacientes.
 *  	Sabendo que o IMC se calcula da seguinte forma: divide-se o peso (em kg) pelo quadrado da altura (em metros), crie um programa que faça o cálculo do IMC de um dado paciente.
 *
 *	Informe o IMC do paciente.
 *	Caso o IMC seja menor que 18,5, informe que a classificação é Baixo peso.
 *	Caso o IMC seja maior que 18,5 e menor que 24,9, informe que a classificação é Peso saudável.
 *	Caso o IMC seja maior ou igual a 25 e menor que 29,9, informe que a classificação é Sobrepeso.
 *	Caso o IMC seja maior ou igual a 30, informe que a classificação é Obesidade.
 */

programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{	
		
		real peso, altura, imc
		
		// Solicita ao usuário o peso e a altura do paciente
   		escreva("Informe o peso do paciente (em kg): ")
   		leia(peso)
   
   		escreva("Informe a altura do paciente: ")
   		leia(altura)
   
   		// Calcula o IMC
  		imc = (peso / (altura * altura))
   
   		// Informa o IMC do paciente
   		escreva("O IMC do paciente é: " + m.arredondar(imc, 2))
   
   		// Determina a classificação do IMC
   		se(imc < 18.5) {
   			escreva("\nClassificação: Baixo peso")
   		} senao se ((imc >= 18.5) e (imc < 25)) {
   			escreva("\nClassificação: Peso saudável")
   		} senao se ((imc >= 25) e (imc < 30)) {
      		escreva("\nClassificação: Sobrepeso")
   		} senao {
   			escreva("\nClassificação: Obesidade") 
   		}
      		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1486; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */