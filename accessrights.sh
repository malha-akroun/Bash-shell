while IFS=',' read -r Id Prenom Nom Mdp right;do 
	if [[ -z "$Id" ]] || [[ -z "$Prenom" ]] || [[ -z "$Nom" ]] || [[ -z "$Mdp" ]] || [[ -z "$right" ]]; then
		echo "Erreur l'une des informations est manquante"
		continue
	fi
	if grep -q "$Prenom" "/etc/passwd" ;then
		echo "Erreur nom d'utilisateur déjà pris"
	else
		sudo useradd --badname "$Prenom"
		echo "$Prenom:$Mdp" | sudo chpasswd 
		if [[ "$right" == "Admin" ]];then 
			sudo usermod -aG "$Prenom"
		fi
	fi
done< "/home/malha/Bureau/Shell_Userlist.csv" 
