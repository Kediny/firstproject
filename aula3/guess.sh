#!/bin/bash

# Gera um número aleatório entre 1 e 100

n=$(( $RANDOM % 100 + 1));

# Número de tentativas

i=1;

echo "Estou a pensar num número em 1 e 100. Qual é?"
echo ""

# Continuar o loop enquanto o utilizador não acerta
while :; do
	echo "Introduza a sua tentativa nº $i (0 para desistir):"
	read guess

	# Se acertar ou desistir sair do loop

	if [[ $guess == $n || $guess == 0 ]]; then
		break
	fi

	if (( guess<n )); then
		echo "O número é maior que $guess! Tente outra vez."
	else
		echo "O número é menor que $guess! Tente outra vez."
	fi

	i=$((i+1))
done

if ((guess== 0 )); then
	echo "Não adivinhou em $i tentativas, o número era $n."
else
	echo "Parabéns, o número correto é $n! Acertou em $i tentativas!"
fi
