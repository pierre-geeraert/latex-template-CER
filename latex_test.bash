#!/bin/bash


source fonction.bash


#declaration fonction sous section
sous_section() 
{ 
 echo titre sous section
 read titre_sous_section
 valeur="\\";echo -n $valeur >> cer.tex
 valeur="color{blue}";echo  $valeur >> cer.tex 	
 valeur="\subsection{";echo -n $valeur >> cer.tex
 echo  $titre_sous_section} >> cer.tex
 valeur="\\";echo -n $valeur >> cer.tex
 valeur="color{black}";echo  $valeur >> cer.tex
}
#fin declaration







##########section 

echo nbr section
read nbr_section

while [ "$nbr_section" -ne 0 ];
	do
	echo nous somme dans la section $nbr_section
	section

	echo nbr sous section
	read nbr_sous_section

	echo $nbr_sous_section

	while [ "$nbr_sous_section" -ne 0 ];
		do
		echo sectiontest
		sous_section
		let "nbr_sous_section=nbr_sous_section-1"
		done

	let "nbr_section=nbr_section-1"

	done
	















