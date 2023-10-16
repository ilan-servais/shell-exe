#!/bin/bash

# Chemin du fichier de logs
LOG_FILE="/var/log/auth.log"

# Nom de l'utilisateur dont vous souhaitez compter les connexions
UTILISATEUR="votre_utilisateur"

# Compter les connexions
nombre_connexions=$(grep -c "$UTILISATEUR" "$LOG_FILE")

# Créer le fichier avec le nombre de connexions et la date
date_format=$(date "+%d-%m-%Y-%H:%M")
output_file="number_connection-$date_format"
echo "$nombre_connexions" > "$output_file"

# Archiver le fichier
tar -cf "$output_file.tar" "$output_file"

# Déplacer le fichier archivé dans le dossier Backup
mv "$output_file.tar" ~/Job8:Backup/

