#!/bin/bash

###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos 2021/2022
##
## Aluno: Nº: 99087 Nome: Artur José Maçano Nobre
## Nome do Módulo: faturacao.sh
## Descrição/Explicação do Módulo: 
##
##
###############################################################################

if ! [ -e relatorio_utilizacao.txt ]; then
    ./error 1 relatorio_utilizacao.txt
    exit
fi

if [ -e faturas.txt ]; then
    rm faturas.txt
fi

if [ -s relatorio_utilizacao.txt ]; then
    
fi