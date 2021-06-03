#!/bin/bash
#########################################################
# Arquivo: http-filter.sh                               #
# Uso: source ./http-filter.sh index.html               #
# Autor: @cyber__expert                                 #
# Criado em: 01-06-2021                                 #
# Descrição: Script feito para extrair links HTTP e     #
# HTTP(s) requer um arquivo index.html via argumento $1 #
#########################################################

if [ "$1" == "" ];then
    echo "[+] Uso: source ./http-filter.sh index.html"; sleep 1

elif [ "$1" != "" ];then
    if [ -f "$1" ];then
       for linhas in \
            $(echo; cat $1 |grep "://" |grep -o "http:\/\/[^\"]*" |tr -d ';' |tr -d ')' \
              |cut -d ' ' -f1 |sort |uniq);do
                   sleep 0.2; echo $linhas
            done
    else
        echo "[x] Arquivo não encontrado"; sleep 1
    fi
else
     echo "[x] Erro"
fi

Script em bash feito para extrair (filtrar) links HTTP e HTTP(s) a partir de uma index.html passada via argumento
#bashscript #linux #unix
#shellscript #regex #cybersecurity
#terminalbyte #computersecurity
#infosec #ethicalhacker
