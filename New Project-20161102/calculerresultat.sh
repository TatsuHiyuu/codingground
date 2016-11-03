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

	
	while IFS=: read -r Nom Prenom DatedeNaissance essai1 essai2 essai3

		do

			resultat=$(afficherresultat.sh "$Prenom" "$Nom" "$DatedeNaissance" "$essai1" "$essai2" "$essai3")

			echo "$resultat"

		done < "$1"

fi