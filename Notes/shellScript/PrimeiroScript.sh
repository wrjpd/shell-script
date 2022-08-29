#!/bin/bash

####################################
#
# PrimeiroScript.sh - Script de Exemplo do Curso
# Auto: Jo√o Pedro
# Data Criacao: DD/MM/YYYY
#
# Descricao:......................
#
# Exemplo de uso: .....................
#
#################################### 


### VARIAVEL

DATAHORA=$(date +%H:%M)
ARQALUNOS="../../CursoShellScript/arquivos/alunos2.txt"

# OU ARQALUNOS="/home/joao/Documentos/shell/CursoShellScript/arquivos/alunos2.txt"


# Funcao de leitura da data e hora
clear
echo "===Meu Primeiro Script==="
echo ""
echo "Exibir data e hora atual: $DATAHORA"


# Area de leitura da lista de alunos
echo "Listagem dos alunos: "
sort $ARQALUNOS
