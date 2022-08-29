#!/bin/bash

if grep $1 /etc/passwd #retorna a saida na tela, alternativa: if grep $1 /etc/passwd > /dev/null
then
	echo "O usuário existe"
else
	echo "O usuário não existe"

fi








#OUTRA OPÇÃO
USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
	echo "2-O Usuário existe"
else
	echo "2-O Usuário não existe"
fi
