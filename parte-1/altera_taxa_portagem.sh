#!/bin/bash

###############################################################################
## ISCTE-IUL: Trabalho prático de Sistemas Operativos 2021/2022
##
## Aluno: Nº: 99087 Nome: Artur José Maçano Nobre
## Nome do Módulo: altera_taxa_portagem.sh
## Descrição/Explicação do Módulo: 
##
##
###############################################################################

int=^[0-9]+$

if [ $# -lt 3 ]; then 
    ./error 2
    exit
fi

if [ $1 == "" ]; then
    ./error 3 $1
    exit
fi

if [ $2 == "" ]; then
    ./error 3 $2
    exit
fi

if ! [[ $3 =~ $int ]]; then
    ./error 3 $3
    exit
fi

## ver se o portagens.txt existe
if [ -e portagens.txt ]; then

    ## se existir:
    ## verifica se já existe o lanço ($1) no portagens.txt
    if [ grep -c "$1" portagens.txt > 0 ]; then

    ##  se existir, qualquer que seja a autoestrada, altera a taxa de utilização no portagens.txt
        ID=$(cat portagens.txt | grep "$int:$1:$2:$int" | cut -d':' -f1) ## alternativamente? - grep "^$int"
        cat portagens.txt | sed "s/$int:$1:$2:$int/$ID:$1:$2:$3/g"

    ##      se *não* existir, adicionar o lanço com os argumentos usados com a sintaxe
    ##      <ID_portagem>:<Lanço>:<Auto-estrada atribuída>:<Taxa de utilização (em créditos)>
    ##      o ID é +1 do maior que já tava


    ## se não existir:
    ## cria o ficheiro portagens.txt e o primeiro <ID_portagem> é 1
    ##
    ##                  else
    ##                      echo "1:$1:$2:$3" > portagens.txt  
    ##                      ./success 3 $1
    ##                  fi
    ##
    ## ========= FUNCIONA MAS PRECISA DE ESTAR DESATIVADO ATÉ FAZER O RESTO ============
    fi
fi