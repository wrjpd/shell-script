#!/bin/bash

#########################################################################
# 									#
# InfoUser.sh - Gera uma relatório com informações do usuário		#
#									#
#									#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)            	#		
# Data Criação: 29/07/2022						#
#									#
# Descrição:  Recebe um nome de usuario como parametros e 		#
#	      gera as seguintes informações:				#
#									#
#		UID do usuário						#
#		Nome Completo / Descrição do Usuário			#
#		Total em Uso no /home do usuário 			#
# 		Informações do último login do usuário 			#
# 		[Opcional] Validar se o usuário existe ou não		#
#		sem o uso do if, que ainda não foi estudado. 		#
#		Se não existir retorne o exit code 1,			#
#		se existir retorne exit 0				#
#									#
# Exemplo de uso: . InfoUser.sh					#
#									#
#########################################################################

#### TA DANDO ERRO ESSA LINHA
#ls /home/$1 > /dev/null 2>&1 || {echo "Usuario Inexistenta" ; exit 1; }
ls /home/$1 > /dev/null 2>&1 || { echo "Usuario Inexistente" ; exit 1; }

#VARIAVEIS
NAME=$1
USO=$(du)
USERUID=$(grep $NAME /etc/passwd | cut -d ":" -f3)
DES=$(grep $NAME /etc/passwd | cut -d ":" -f5 | tr -d ,)
LASTLOG=$(lastlog | grep $NAME)

#CODIGO
echo "======================================"
echo "Relatório do Usuário: $NAME"
echo ""
echo "UID:$USERUID "
echo "Nome ou Descrição:$DES "
echo ""
echo "Total Usado no /home/$NAME: $USO "
echo ""
echo "Ultímo Login:"
echo "$(lastlog | head -n1)"
echo "$LASTLOG"
echo "======================================"
echo $CODE
