#!/bin/bash

#########################################################################
# Exercício 1 - UID,DIR e Descrição do Usuário				#
#									#
# Nome: UID.sh							#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)		#
# Data: 02/08/2022							#
#									#
# Descrição: O scrip gera o nome,uide,diretório e descrição  		#
#	     de todos os usuários					#
#									#
# Uso: ./UID.sh							#
#									#
#########################################################################

FILE=/etc/passwd

OLDIFS=$IFS
IFS=$'\n'

UID_MIN=$(grep ^UID_MIN /etc/login.defs | tr -s "\t" | cut -f2)
UID_MAX=$(grep ^UID_MAX /etc/login.defs | tr -s "\t" | cut -f2)

echo -e "USUÁRIO\t\tUID\t\tDIRHOME\t\tNOME OU DESCRIÇÃo"

for i in $(cat $FILE)
do
	USERUID=$( echo $i | cut  -d ":" -f3 )
	if [ $USERUID -le $UID_MAX -a $USERUID -ge $UID_MIN ]
	then
		USERNAME=$(echo $i | cut -d ":" -f1)
		DIRHOME=$(echo $i | cut -d ":" -f6)
		DESCRIPTION=$(echo $i | cut -d ":" -f5 | tr -d ',')
		echo -e	"$USERNAME\t\t$USERUID\t\t$DIRHOME\t\t$DESCRIPTION"
	fi	
done

IFS=$OLDIFS
