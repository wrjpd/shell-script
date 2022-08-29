#!/bin/bash

#########################################################################
# Exercício 1 - Execução de processos					#
#									#
# Nome: ExecucaoProcessos.sh						#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)		#
# Data: 02/02/2022							#
#									#
# Descrição: O script checa se um determinado processo está 		#
#	     em execução						#
#									#
# Uso: . ExecuçãoProcessos.sh							#
#									#
#########################################################################

until ps axu | grep $1 | grep -v grep > /dev/null
do
	echo "ATENÇÃO!!!!!! O processo $1 NÃO está em execução"
	sleep 4
done





