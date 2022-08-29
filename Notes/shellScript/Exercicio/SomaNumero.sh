#!/bin/bash

#########################################################################
# 									#
# SomaNumero.sh - Soma dois números.					#
#									#
#									#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)            	#		
# Data Criação: 29/07/2022						#
#									#
# Descrição:  Recebe 2 números e retorna a soma dos dois		#
#									#
# Exemplo de uso: . SomaNumero.sh					#
#									#
#########################################################################


read -p "Digite o primeiro número: " NUM1
read -p "Digite o segundo número: " NUM2

SOMA=$(expr $NUM1 + $NUM2)

echo "A soma dos números é $SOMA"




