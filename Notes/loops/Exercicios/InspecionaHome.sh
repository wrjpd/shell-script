#!/bin/bash

#########################################################################
# Exercício 3 -Busca arquivos na HOME					#
#									#
# Nome: InspecionaHome.sh						#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)		#
# Data: 02/08/2022							#
#									#
# Descrição: O script busca arquivos JPG, MP3 e MP4 na home  		#
#	     de todos os usuários					#
#									#
# Uso: ./InspecionaHome.sh							#
#									#
#########################################################################

FILE=/etc/passwd

OLDIFS=$IFS
IFS=$'\n'

UID_MIN=$(grep ^UID_MIN /etc/login.defs | tr -s "\t" | cut -f2)
UID_MAX=$(grep ^UID_MAX /etc/login.defs | tr -s "\t" | cut -f2)


for i in $(cat $FILE)
do
	USERUID=$( echo $i | cut  -d ":" -f3 )
	if [ $USERUID -le $UID_MAX -a $USERUID -ge $UID_MIN ]
	then
		USERNAME=$(echo $i | cut -d ":" -f1)
		JPG=$(find /home/$USERNAME -name "*.jpg" | wc -l)
		MP3=$(find /home/$USERNAME -name "*.mp3" | wc -l)
		MP4=$(find /home/$USERNAME -name "*.mp4" | wc -l)
		echo "Usuario:$USERNAME"
		echo "Arquivos JPG: $JPG"
		echo "Arquivos MP3: $MP3"
		echo "Arquivos MP4: $MP4"
		echo ""
	fi	
done

IFS=$OLDIFS
