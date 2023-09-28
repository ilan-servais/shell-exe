#!/bin/bash

# Vérifier si le nombre d'arguments est correct
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

# Récupérer les nombres à additionner
nombre1=$1
nombre2=$2

# Effectuer l'addition
resultat=$((nombre1 + nombre2))

# Afficher le résultat
echo "Result : $resultat"

