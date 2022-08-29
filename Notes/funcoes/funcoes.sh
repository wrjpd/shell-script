#!/bin/bash

maiuscula () {
	local VAR1=$(echo $1 | tr a-z A-Z)
	#return 10 # sempre numero
}

maiuscula shell
echo $VAR1  #nada é mostrado, pois VAR1 é locali
