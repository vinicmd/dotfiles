#!/bin/bash

echo "Digite 1 para Fedora ou 2 para Ubuntu"
read sistema

if [ $sistema -eq 1 ]
then
    echo deu certo Fedora
else
    if [ $sistema -eq 2 ]
    then
        echo deu certo Ubuntu
    else
        echo numero invalido
    fi
fi    