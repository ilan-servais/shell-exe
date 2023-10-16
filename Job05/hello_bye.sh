#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <argument>"
    exit 1
fi

if [ "$1" == "Hello" ]; then
    echo "Bonjour, je suis un script !"
elif [ "$1" == "Bye" ]; then
    echo "Au revoir et bonne journée !"
else
    echo "Argument invalide. Utilisez 'Hello' ou 'Bye'."
fi

