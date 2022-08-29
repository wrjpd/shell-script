#!/bin/bash

clear

read -p "Informe o limite de processos: " MAXIMO

while [ $(ps axu | wc -l ) -le $MAXIMO ]
do
	echo "Tudo ok"
	echo "Pocessos Atuais: $(ps axu | wc -l)"
	sleep 3
	echo
done

echo "Limite de Processos Excedido"
echo "Por favor verifique o sistema"
