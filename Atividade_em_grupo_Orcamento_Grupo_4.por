programa
{

	inclua biblioteca Matematica --> m
	inclua biblioteca Calendario --> cad
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> t
	const inteiro T = 6
	cadeia produtos [][] = 	{
								{"1","2","3","4","5","6"},
								{"Parafuso       ","Aruela        ","Porca          ","Chaves de fenda","Proca         ","Bucha          "}
						  	}
	real valorProdutos[] = {1.9,0.5,1.2,15.9,10.89,0.9} // Valor do produto
	inteiro vQuant[T]
	cadeia nome = "", dataValidade=""
	real vlTotal[T],vlTotalSemDesc[T]
	real subtotal =0
	real total =0

	funcao inicio()
	{
					
	  menu()
					
		
	}

	funcao imprimeSubtotal(cadeia prod[][],real vlProdutos[]){
		
		escreva("Cód\tDescrição do produto\tPreço\n")
		
		para	(inteiro i=0; i<T; i++){
			vlTotalSemDesc[i] = (vlProdutos[i] * vQuant[i])
			escreva(prod[0][i] + "\t"+  ajustarTexto(produtos [1][i],15) + "\t\tR$ " +  formatarReal(m.arredondar(vlProdutos[i],2), 5)+"\t" + vQuant[i]+"\t" + formatarReal(m.arredondar(vlTotalSemDesc[i],2),7)+ "\n")
			subtotal += vlTotalSemDesc[i]
				
		}
		write ("-",62)
		br()
		escreva("Subtotal")
		write ("-",45)
		escreva("R$ " + formatarReal(m.arredondar(subtotal,2),8) +"\n")
				
		
	}
	funcao menu(){
		
		cadeia sOpcao
		inteiro opcao =0
		
		faca{
			write("=",30)
			br()
			escreva("ORÇAMENTO")
			br()
			write("=",30)
			br()
			escreva("1- Incluir\n")
			escreva("2- alterar\n")
			escreva("3- Excluir\n")
			escreva("4- Imprimir\n")
			escreva("5- Sair")
			br()
			
			leia(sOpcao)
	
			se (t.cadeia_e_inteiro(sOpcao,10)){
				opcao = t.cadeia_para_inteiro(sOpcao,10)
			}
	
			escolha(opcao){
				caso 1: criarOrcamento() pare
				caso 2: calculo(produtos,valorProdutos,vlTotal)pare
				caso 4: imprimeSubtotal(produtos, valorProdutos) pare
				caso 5: escreva("Obrigado por usar nosso sistema")pare
				caso 6:validade()pare // teste
				caso contrario: escreva("\n\nOpção inválida")
			}
		}enquanto(opcao !=5)
			
	}
	funcao write(cadeia a, inteiro n){
		para (inteiro i = 0; i <=n; i++){
			escreva (a)
		}
	}
	funcao br(){
		escreva("\n")
	}
	funcao cadastrarQuant(cadeia prod[][],real vlProdutos[]){
		
		escreva("Cód\tDescrição do produto\tPreço\n")
		
		para (inteiro i = 0; i <T; i++){
				escreva(prod[0][i] + "\t"+  ajustarTexto(produtos [1][i],15) + "\t\tR$ " + formatarReal(m.arredondar(vlProdutos[i],2), 5) +" Quant: ")
				leia(vQuant[i])
				
		}
				
	}
	funcao calculo(cadeia prod[][],real vlProdutos[], real vlTotal[]){

		real desc = desconto()
		
		cabecalhoOrcamento()
		
		para	(inteiro i=0; i<6; i++){
			vlTotal [i] = (vlProdutos[i] * vQuant[i])
			escreva(prod[0][i] + "\t"+ ajustarTexto(produtos [1][i],15) + "\t\tR$ " + formatarReal(m.arredondar(vlProdutos[i],2), 5) +"\t" +vQuant[i]+"\t" + formatarReal(m.arredondar(vlTotal [i],2), 8)+ "\n")
			total = subtotal*desc
		}
		se(desc<1){
			write ("-",62)
			br()
			escreva("Subtotal")
			write ("-",45)
			escreva("R$ " + formatarReal(m.arredondar(subtotal,2),8) +"\n")
			escreva("A vista com desconto de 5%")
			write ("-",25)
			escreva("R$ " + formatarReal(m.arredondar(subtotal*(1-desc),2),8) +"\n")
			}se(desc>1){
				write ("-",62)
				br()
				escreva("Subtotal")
				write ("-",45)
				escreva("R$ " + formatarReal(m.arredondar(subtotal,2),8) +"\n")
				escreva("A prazo com acrescimo de 5%")
				write ("-",45)
				escreva("R$ " + formatarReal(m.arredondar(subtotal*(1-desc),2),8) +"\n")
				}
		
		write ("-",62)
		br()
		escreva("TOTAL")
		write ("-",45)
		escreva("R$ " + formatarReal(m.arredondar(total,2),8) +"\n")

		
	}
	funcao nomeCliente(){
		escreva("Informe o nome do cliente")
		leia (nome)
	}
	funcao validade(){
		//Variável
		inteiro dia, mes, ano , diaAtual, mesAtual, anoAtual
		logico data_valida = verdadeiro
		logico validado =falso
		
		faca{
			escreva ("Informe a data de validade desse orçamento\n")
			escreva ("Informe o dia:" )
			leia(dia)
			escreva ("Informe o mes: ")
			leia(mes)
			escreva ("Informe o ano (xxxx):" )
			leia(ano)
			limpa()
			
			diaAtual = cad.dia_mes_atual()
			mesAtual = cad.mes_atual()
			anoAtual = cad.ano_atual()
			         
			// Verificar os meses com 30 dias
	    		se ((mes == 4) ou (mes == 6) ou (mes == 9) ou (mes == 11)){
	        		se ((dia >= 1) e (dia <= 30)){
	           	 data_valida = verdadeiro
	        		}senao
	           	 data_valida = falso
	    		} senao se ((mes == 1) ou (mes == 3) ou (mes == 5) ou (mes == 7) ou (mes == 8) ou (mes == 10) ou (mes == 12)){
	        		se ((dia >= 1) e (dia <= 31)){
	           	 data_valida = verdadeiro
	        		}senao
	           	 data_valida = falso
			} senao se (mes ==2){
	        		se ((dia >= 1) e (dia <= 28)){
	           	 data_valida = verdadeiro
	        		}senao
	           	 data_valida = falso
			}
			 // Exibir resultado
	    		se ((data_valida) e ((dia>=diaAtual) e (mes >= mesAtual) e (ano >= anoAtual))){
	       		 dataValidade = (dia + "/"+ mes +"/" +ano)
	       		 escreva(dataValidade)
	       		 br()
	       		 validado = verdadeiro
	    		}senao
	       		 escreva("A data fornecida é inválida.\n Insira nova data!\n")
		}enquanto (validado == falso)
			
		
	}
	funcao real desconto(){
		
		inteiro opcao =0
		cadeia sOpcao 
		real desc =0
		
		escreva ("Informe forma de compra\n")
		write("=",30)
		br()
		escreva ("1- A vista com 5% de desconto")
		br()		
		escreva ("2- Cartão sem desconto")
		br()
		escreva ("3- A prazo com 5% de acrescimo")
		leia(sOpcao)

		se(t.cadeia_e_inteiro(sOpcao, 10)){
			opcao = t.cadeia_para_inteiro(sOpcao,10)
		}
		escolha(opcao){
			caso 1: desc = 0.95 pare
			caso 2: desc = 1.0 pare
			caso 3: desc = 1.05 pare
			caso contrario: escreva ("Opção incorreta")
		}
		retorne desc
	}	
	funcao cadeia formatarReal(real valor, inteiro tamanho) {
		
		cadeia novoValor = t.real_para_cadeia(valor)
		inteiro pos = txt.posicao_texto(".", novoValor, 0)
		inteiro qtCaracteres = txt.numero_caracteres(novoValor)
		
		cadeia decimais = txt.extrair_subtexto(novoValor, pos, qtCaracteres)
		inteiro qtCasasDecimais = 2 - txt.numero_caracteres(decimais)	
		
		novoValor = txt.extrair_subtexto(novoValor, 0, pos)
		
		para(inteiro i=0; i <= qtCasasDecimais; i++) {
			decimais = decimais + "0"
		}

		novoValor = novoValor + decimais
		novoValor = txt.preencher_a_esquerda(' ', tamanho, novoValor)
		
		retorne novoValor 		
	}	
	funcao cadeia ajustarTexto(cadeia texto, inteiro tamanho) {
		inteiro qtCaracteres = txt.numero_caracteres(texto)

		para (inteiro i = 1; i <= tamanho - qtCaracteres; i++) {
			texto = texto + " "
		}

		retorne texto
	}
	funcao criarOrcamento(){

		cadastrarQuant(produtos, valorProdutos)
		limpa()
		imprimeSubtotal(produtos, valorProdutos)
		espera()
		limpa()
		nomeCliente()
		limpa()
		validade()
		espera()
		calculo(produtos,valorProdutos,vlTotal)
		espera()
		
		
		
		
	}
	funcao espera(){
		cadeia tecla
		
		escreva("Precione qualquer tecla para continuar")	
		leia(tecla)
	}
	funcao cabecalhoOrcamento(){
		write("=",60)
		br()
		escreva("\t\t\t\tORÇAMENTO")
		br()
		write("=",60)
		br()
		escreva("Nome: "+ajustarTexto(nome,25)+"Orçamento valido até: "+dataValidade+"\n")	
	}
		


			
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3397; 
 * @DOBRAMENTO-CODIGO = [45, 81, 86, 89, 139, 143, 192, 219, 239, 266, 272];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */