#!/bin/bash

########################################
#
#
#
#
#
#
#########################################



ARQALUNOS="../../CursoShellScript/arquivos/alunos2.txt"

clear
echo "=========Scrip de Busca de Alunos========="
echo ""

read -p "Por favor, informe o nome do aluno: " ALUNO

#OU
#echo -n "Por favor, informe o nome do aluno:"
#read ALUNO

echo ""
echo "O nome completo do aluno Ã:$(grep "$ALUNO" $ARQALUNOS)"

echo "Fim do Script"
