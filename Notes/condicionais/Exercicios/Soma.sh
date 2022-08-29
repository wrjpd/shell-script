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

read -p "Informe o Valor 1: " VALOR1
read -p "Informe o Valor 2: " VALOR2

echo 
echo "A soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"
