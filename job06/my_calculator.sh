#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: $0 <nombre1> <opération> <nombre2>"
    exit 1
fi

nombre1=$1
operation=$2
nombre2=$3

case $operation in
    +)
        resultat=$(($nombre1 + $nombre2))
        ;;
    -)
        resultat=$(($nombre1 - $nombre2))
        ;;
    x)
        resultat=$(($nombre1 * $nombre2))
        ;;
    ÷)
        resultat=$(($nombre1 / $nombre2))
        ;;
    *)
        echo "Opération invalide. Utilisez l'un des symboles: + - x ÷"
        exit 1
        ;;
esac

echo "Le résultat de $nombre1 $operation $nombre2 est : $resultat"
