#!/bin/bash

# Vérifier si des arguments sont fournis
if [ $# -ne 3 ]; then
    echo "Utilisation : $0 <nombre1> <opération> <nombre2>"
    exit 1
fi

# Extraire les arguments
num1=$1
operation=$2
num2=$3

# Effectuer l'opération en fonction du symbole
case $operation in
    +) result=$(echo "scale=10; $num1 + $num2" | bc) ;;
    -) result=$(echo "scale=10; $num1 - $num2" | bc) ;;
    \*) result=$(echo "scale=10; $num1 * $num2" | bc) ;;
    /) result=$(echo "scale=10; $num1 / $num2" | bc) ;;
    *) echo "Opération invalide. Utilisez +, -, *, /." && exit 1 ;;
esac

# Afficher le résultat
echo "Résultat : $result"
