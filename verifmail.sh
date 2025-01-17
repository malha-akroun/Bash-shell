#!/bin/bash

# Définition du motif regex pour la validation d'e-mail
regex="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

# Vérification si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 adresse_email"
    exit 1
fi

# Vérification de l'adresse e-mail
if [[ $1 =~ $regex ]]; then
    echo "Adresse correcte"
else
    echo "Mauvais Format"
fi

