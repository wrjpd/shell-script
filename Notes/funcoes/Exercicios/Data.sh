#!/bin/bash

#########################################################################
# Exercício 1 - Executa uma função que retorna datas			#
#									#
# Nome: Data.sh							#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)		#
# Data: 08/08/2022							#
#									#
# Descrição: O script retorna um formato de data 		#
#	     dependendo do parametro passado pelo usuário			#
#									#
# Uso: . Data.sh							#
#									#
#########################################################################


data () {

	DIA=$(echo $2 | cut -c1,2)
	MES=$(echo $2 | cut -c3,4)
	ANO=$(echo $2 | cut -c5,6,7,8)
	case $1 in
		-f)
			if [ $DIA -gt 12 -a $MES -le 12 ]
			then
				return 0
			elif [ $DIA -le 12 -a  $MES -gt 12 ]
			then
				return 1
			elif [ $DIA -le 12 -a $MES -le 12 ]
			then
				return 2
			else
				return 3
			fi
			;;
		-i)
			echo "$MES/$DIA/$ANO"
			;;
		-b)
			echo "opção -b"
			;;
		-e)
			echo "opção -e"
			;;
		--help)
			clear
			echo "Uso ./FuncoesDiversas.sh OPÇÃO DATA"
			echo ""
			echo "DATA nos formatos DDMMYYYY ou MMDDYYYY, com ou sem /"
			echo ""
			echo "Opções:"
			echo "-f = Retorna 0 para BR, 1 para US e 2 quando impossível determinar, 3 Inválido"
			echo "-i = Inverte formato BR para US e US 		para BR. Inclui as Barras"
			echo "-b = Inclui Barras de Data. Exemplo: de 13081981 para 13/08/1981"
			echo "-e = Exibe a data em formato extenso. Exemplo de 13081918 para 13 de"
			echo "Agosto de 1981"
			;;
		*)
			echo "Opção invalida"
			;;
	esac

}

data $1 $2		
