#!/bin/bash

#########################################################################
# Exercício 1 - Executa operações aritméticas				#
#									#
# Nome: Aritmetica.sh							#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)		#
# Data: 01/08/2022							#
#									#
# Descrição: O script faz uma operação aritmética de acordo 		#
#	     com a escolha do usuário					#
#									#
# Uso: . Aritmetica.sh							#
#									#
#########################################################################


#VARIAVEIS
read -p "Informe o Valor 1: " VALOR1
read -p "Informe o Valor 2: " VALOR2

echo ""
echo "Escolha uma Operação:"
echo "1=Soma"
echo "2=Subtração"
echo "3=Multiplicação"
echo "4=Divisão"
echo "Q=Sair"
echo ""

read -p "Opção: " OPCAO
echo ""

case "$OPCAO" in
	1)
		echo "$(expr $VALOR1 + $VALOR2)"
		;;
	2)
		echo "$(expr $VALOR1 - $VALOR2)"
		;;
	3)
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
		then
			echo "Você inseriu um valor nulo"
			
		else
			echo "$(expr $VALOR1 \* $VALOR2)"
		fi
		;;
		
	4)
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
		then
			echo "Você inseriu um valor nulo"
		else
			if [ $(expr $VALOR1 % $VALOR2) -eq 0 ]
			then
				echo "$VALOR1/$VALOR2 = $(expr $VALOR1 / $VALOR2 )"
			else
				echo "Divisão com Resto=$(expr $VALOR1 % $VALOR2)"
				echo ""
				echo "$VALOR1/$VALOR2 = $(expr $VALOR1 / $VALOR2 )"
			fi
		fi
		;;
	Q)
		echo "Sair"
		;;
	*)
		echo "Opção Invaĺida"
esac

