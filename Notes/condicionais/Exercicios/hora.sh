#!/bin/bash

#########################################################################
# Exercício 1 - Hora atual						#
#									#
# Nome: HoraAtual.sh							#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)		#
# Data: 31/07/2022							#
#									#
# Descrição: O script retorna "Bom Dia, "Boa Tarde" ou "Boa Noite"	#
#	     e retorna a hora atual						#
#									#
# Uso: . /HoraAtual.sh							#
#									#
#########################################################################

#VÁRIAVEIS

PERIODO=$(date +%H)

HORA=$(date +%I)

MINUTO=$(date +%M)

echo $PERIODO

if [ "$PERIODO" -ge 6 -a "$PERIODO" -lt 12 ]
then
	echo "Bom Dia!"
elif [ "$PERIODO" -ge 12 -a "$PERIODO" -lt 18 ]
then	
	echo "Boa Tarde!"
else
	echo "Boa Noite!"
fi


if [ "$PERIODO" -lt 12 ]
then
	echo "A hora atual é: $HORA:$MINUTO AM"
else
	echo "A hora atual é: $HORA:$MINUTO PM"
fi


