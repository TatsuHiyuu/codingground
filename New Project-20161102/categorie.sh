#!/bin/bash

# Calcule et affiche la categorie d'age d'un athlete

# Auteur : Andy Dowlut (c) 2016



function aide ()			
#affiche l'aide de la commande maximum

{

	echo "usage : categorie v1"

	echo "renvoie la categorie d'age correspondant a l'annee de naissance v1"

	echo "affiche un message d'erreur si aucun parametre n'est renseigne"

}



#Programme principal

if test "$#" -eq "0" 			#si1 : on verifie qu'e le premier parametre existe'il y a au moins un param

then

	echo "Aucun parametre." >&2 	#s'il n'existe pas, on affiche un message d'erreur qu'on renvoie dans la sortie erreur

	aide				#on affiche alors l'aide

elif
	[ "$1" = "-h" ]			#si le premier param est -h

then

	aide				#alors on affiche l'aide

else

	adn=$1				#l'annee de naissance adn prend la valeur du premier param

	if [ "$adn" -le 1976 ]; then
					# si2 : si la date est < 1976
		categ="Masters"
						# alors c'est un Masters
	elif [ "$adn" -ge 1977 ] && [ "$adn" -le 1993 ]; then
		# si la date est comprise entre 1977 et 1993
		categ="Seniors"
						# alors c'est un Seniors
	elif [ "$adn" -ge 1994 ] && [ "$adn" -le 1996 ]; then
		# si la date est comprise entre 1994 et 1996
		categ="Espoirs"
						# alors c'est un Espoirs
	elif [ "$adn" -ge 1997 ] && [ "$adn" -le 2006 ]; then
		# si la date est comprise entre 1997 et 2006
		case "$adn" in
						# selon la date de naissance
			1997 | 1998)
					# si c'est 97 ou 98
				categ="Juniors"
				# c'est un junior
				;;

			1999 | 2000)					# si c'est 99 ou '00

				categ="Cadets"
				# c'est un cadet
				;;

			2001 | 2002)					# si c'est 2001 ou 2002

				categ="Minimes"
				# c'est un minime
				;;

			2003 | 2004)					# si c'est 2003 ou 2004

				categ="Benjamins"
			# c'est un benjamin
				;;

			2005 | 2006)
					# si c'est 2005 ou 2006
				categ="Poussins"
			# c'est un poussin
				;;

		esac
							# fselon
	elif [ "$adn" -ge 2007 ] && [ "$adn" -le 2009 ]; then
		# sinon si la date est comprise entre 2007 et 2009
		categ="Ecole d'Athletisme"
				# c'est un ecole d'athle
	else
								# dans tous les autres cas
		categ="Baby Athlé"
					# c'est un baby athle
	fi								#fin si2

fi
									#fin si1
echo "$categ"