#!/bin/bash

# Chemin vers le fichier CSV
CSV_FILE="/home/ilan/shell-exe/job09/Shell_Userlist.csv"

# Lire le fichier CSV ligne par ligne
tail -n +2 "$CSV_FILE" | while IFS=',' read -r id prenom nom mdp role
do
    # Supprimer les espaces supplémentaires à la fin du nom d'utilisateur
    prenom=$(echo "$prenom" | sed 's/ *$//')

    # Vérifier si l'utilisateur existe déjà
    if id "$prenom" &>/dev/null; then
        echo "L'utilisateur $prenom existe déjà."
    else
        # Vérifier le rôle de l'utilisateur
        if [ "$role" == "Admin" ]; then
            # Créer l'utilisateur et lui donner les permissions d'admin
            sudo useradd -m -G sudo "$prenom"
        else
            # Créer l'utilisateur sans permissions spéciales
            sudo useradd -m "$prenom"
        fi
    fi
done
