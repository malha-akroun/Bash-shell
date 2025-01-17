# Définition du motif regex pour la validation de numéro de téléphone
# Ce motif accepte les formats : 0123456789 ou 01 23 45 67 89 ou +33123456789
regex="^(\+33|0)[1-9]([-. ]?[0-9]{2}){4}$"

# Vérification si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 numero_telephone"
    exit 1
fi

# Vérification du numéro de téléphone
if [[ $1 =~ $regex ]]; then
    echo "Numéro correct"
else
    echo "Mauvais Format"
fi
