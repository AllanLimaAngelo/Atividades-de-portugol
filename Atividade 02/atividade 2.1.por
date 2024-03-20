programa
{
    inclua biblioteca Matematica-->m
    
    inteiro meses=0,i
    real valorDeposito,rendimento=0.0,valorAtual,juros,valorFinal=0.0
    
    
    funcao inicio()
    {
        escreva("Deposito Inicial : ")
        leia(valorDeposito)
        escreva("Por quantos mês deseja manter ")
        leia(meses)

        valorFinal=valorDeposito
    
        para(i=1;i<=meses;i++){
            juros=valorFinal *0.05    
            rendimento=rendimento+juros
            valorFinal=valorFinal+rendimento
            rendimento=0.0
            escreva("\nValor no mês :",m.arredondar(valorFinal,2) )

            }            
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 537; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 5, 20, 1}-{juros, 6, 49, 5}-{meses, 5, 12, 5}-{rendimento, 6, 23, 10}-{valorAtual, 6, 38, 10}-{valorDeposito, 6, 9, 13}-{valorFinal, 6, 55, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */