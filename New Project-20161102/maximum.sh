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

if [ "$#" -eq "0" ]				# on verifie que le premier parametre existe

then
	
echo "Aucun parametre." >&2 		# s'il n'existe pas, on affiche un message d'erreur qu'on renvoie dans la sortie erreur

	aide 					# on affiche alors l'aide

elif [ "$1" = "-h" ] 				# si le premier param est -h
then
    
	aide 					# alors on affiche l'aide

else

	echo "$@" 				# affiche tous les parametres

	maxi="$1"; 				# on initialise maxi au premier parametre qui existe

	for i in "$@" 				# on parcourt l'ensemble des param via i

do

	[ "$i" -gt "$maxi" ] && maxi="$i"; 	# si le param i est plus grand que la var maxi, on affecte ce param a maxi

done

echo "$maxi" 					# on affiche la valeur max

fi