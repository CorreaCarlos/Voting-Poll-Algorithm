programa {
	inclua biblioteca Util --> U
	cadeia tema_A, tema_B
	inteiro votos_A = 0, votos_B = 0, votos_nulos = 0, opcao = 0, total_votos = 0
	inteiro porcentagem_A, porcentagem_B, porcentagem_nulos
	
	funcao inicio() 
 	{
 		limpa()
 		registra_temas()
 	}
 	
 	funcao registra_temas()
 	{
 		escreva("Quais serão as opções entre quais o usuário deverá escolher? De duas opções para enquete.\n")
 		escreva("Tema A: ")
 		leia(tema_A)
 		escreva("\nTema B: ")
 		leia(tema_B)
 		limpa()
 		registra_enquete()
 	}
 	
 	funcao registra_enquete()
 	{
 		enquanto(opcao!=3)
 		{
 			limpa()
 			escreva("Entre ",tema_A, " e ", tema_B, ", o que vc prefere?\n")
 			escreva("A votação só encerra ao apertar a opção para Finalizar a votação!\n")
 			escreva("ATENÇÃO QUALQUER OPÇÃO DIFERENTE DAS DISPONIVEIS RESULTA EM VOTO NULO\n")
 			escreva("1:",tema_A,";\n2:",tema_B,";\n3:Finalizar Votação;\n")
 			leia(opcao)
 			escolha(opcao)
 			{
 				caso 1:
 				{
 					votos_A++
 					total_votos++
 					pare
 				}
 				caso 2:
 				{
 					votos_B++
 					total_votos++
 					pare
 				}
 				caso 3:
 				{
 					pare
 				}
 				caso contrario:
 				{
 					votos_nulos++
 					total_votos++
 					escreva("O voto foi registrado como nulo")
 					U.aguarde(200)
 					pare
 				}
 			}
 		}
 		calcula_porcentagem()
 		limpa()
 		escreva("Resultado Votação:\n")
 		escreva("Votos A: ",votos_A," ",porcentagem_A,"%","\n")
 		escreva("Votos B: ",votos_B," ",porcentagem_B,"%","\n")
 		escreva("Votos Nulos: ",votos_nulos," ",porcentagem_nulos,"%","\n")
 		escreva("Total de votos: ", total_votos)
 	}
 	
 	funcao calcula_porcentagem()
 	{
 		porcentagem_A = (votos_A/total_votos)*100
 		porcentagem_B = (votos_B/total_votos)*100
 		porcentagem_nulos = (votos_nulos/total_votos)*100
 	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1725; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */