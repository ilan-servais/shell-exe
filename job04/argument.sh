#!/bin/bash

# Vérifier si le nombre d'arguments est correct
if [ $# -ne 2 ]; then
    echo "Usage: $0 <nouveauFichier> <contenu>"
    exit 1
fi

# Copier le contenu du fichier spécifié vers le nouveau fichier
cat "$2" > "$1"

echo "Le contenu a été copié avec succès dans $1."
