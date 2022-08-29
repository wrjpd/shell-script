#!/bin/bash

case "$1" in
	[0-9])
		echo "O parametro informado é um número"
		;;
	[A-Z])
		echo "O parametro informado é uma letra maíscula"
		;;
	[a-z])
		echo "O parametro informado é uma letra minúscula"
		;;
	*)
		echo " O parametro é um caractere especial"
esac
