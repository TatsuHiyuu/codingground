#!/bin/bash

# Renvoie le paramètre ayant la valeur la plus élevée

# Auteur : Andy Dowlut (c) 2016



function aide ()

# affiche l'aide de la commande maximum

{

	echo "usage : maximum v1 v2 ... vn"

	echo "renvoie la plus grande valeur"

	echo "affiche un message d'erreur si aucun parametre n'est renseigne"

}



#Programme principal

if test "$#" -eq "0"				# on verifie que le premier parametre existe

then
	
echo "Aucun parametre." >&2 		# s'il n'existe pas, on affiche un message d'erreur qu'on renvoie dans la sortie erreur

	aide 					# on affiche alors l'aide

elif [ "$1" = "-h" ] 				# si le premier param est -h
then
    
	aide 					# alors on affiche l'aide

else

	prenom=$1
	nom=$2
	annee=${3##*-*-}
	categorie=$(categorie.sh $annee)
	maximum=$(maximum.sh $4 $5 $6)
	echo "Le meilleur lance du $categorie $prenom $nom est de $maximum m."
fi