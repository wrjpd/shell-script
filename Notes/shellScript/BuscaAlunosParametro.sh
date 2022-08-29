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


ALUNO=$(grep "$1" $ARQALUNOS) 

echo $1
echo ""
echo  "O nome completo do aluno :$(grep "$ALUNO" $ARQALUNOS)"

echo "Fim do Script"
