#!/bin/bash

###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos 2021/2022
##
## Aluno: Nº: 99087 Nome: Artur José Maçano Nobre
## Nome do Módulo: lista_condutores.sh
## Descrição/Explicação do Módulo: 
## 
## - O módulo lista_condutores.sh usa o comando awk para manipular o texto presente
##   no ficheiro pessoas.txt de modo a que seja escrito num novo ficheiro 
##   condutores.txt e, se for bem sucedido na escrita, imprima no ecrã
##   os conteúdos do novo condutores.txt. Caso contrário, irá dar uma mensagem de erro.
##
###############################################################################

if [ -e pessoas.txt ]; then
    cat pessoas.txt | awk -F "[:]" '{print "ID"$3"-"$2";"$1";"$4";"$3";150" }' > condutores.txt
    ./success 2 "condutores.txt"
else
    ./error 1 "pessoas.txt"
    exit
fi