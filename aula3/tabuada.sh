#!/bin/bash

# Verifica a sintaxe do input

if [ $# -ne 1 ]; then
	echo "SINTAXE: ./tabuada.sh <número inteiro entre 1 e 9>"
	exit
fi

# Verifica se o valor está entre 1 e 9

if (( $1 < 1 || $1 > 9 )); then
	echo "Introduza um valor entre 1 e 9."
	exit
fi

# Imprime a tabuada entre 1 e 10

i=1
while [ $i -le 10 ]; do
	echo " $1 x $i = $(($1*$i))"
	i=$(( $i+1))
done
