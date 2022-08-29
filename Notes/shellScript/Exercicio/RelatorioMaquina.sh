#!/bin/bash

#########################################################################
# 									#
# RelatorioMaquina.sh - Gera um relatório com algumas informações da máquina	#
#									#
#									#
#									#
# Autor: João Pedro da Silva Oliveira (jpdso15@gmail.com)            	#		
# Data Criação: 29/07/2022						#
#									#
# Descrição:  Gera as seguintes informações:				#
#	Nome da Máquina							#
#	Data e Hora Atual						#
#	Ultima inicialização						#
#	Versão do Kernel						#
#	Quantidade de CPUs/Cores					#
#	Modelo da CPU							#
#	Total de Memória RAM Disponível					#
#	Partições							#
#									#
# Exemplo de uso: . RelatorioMaquina.sh					#
#									#
#########################################################################


#VARIAVEIS
NOME=$(hostname)
DATAHORA=$(date)
LASTRESTART=$(uptime)
KERNELVERSION=$(uname -r)
MODEL=$(grep "model name" /proc/cpuinfo | head -n1 | cut -d ":" -f2)
CORE=$(grep "cpu cores" /proc/cpuinfo | head -n1 | cut -d ":" -f2)
MEMTOTAL=$(grep "memtotal" -i  /proc/meminfo | head -n1 | cut -d ":" -f2)
PARTICOES=$(df -h | egrep -v '(tmpfs|udev)')



#CODIGO
echo "================================="
echo "Relatório da Máquina: $NOME"
echo "Data/Hora: $DATAHORA"
echo "================================="
echo ""
echo "Máquina Ativa desde: $LASTRESTART "
echo ""
echo "Versão do Kernel: $KERNELVERSION:"
echo ""
echo "CPUs:"
echo "Quantidade de CPUs/Core: $CORE "
echo "Modelo da CPU: $MODEL "
echo ""
echo "Memória Total: $MEMTOTAL"
echo ""
echo "Partições: $PARTICOES"








