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
read nbr_section_voulu
nbr_section_effectif=1
echo nbr section $nbr_section_effectif

while [ "$nbr_section_effectif" -le "$nbr_section_voulu" ];
	do
	echo nous somme dans la section $nbr_section_effectif
	section

	echo nbr sous section
	read nbr_sous_section_voulu
	nbr_sous_section_effectif=1
	echo $nbr_sous_section_effectif

	while [ "$nbr_sous_section_effectif" -le "$nbr_sous_section_voulu" ];
		do
		echo sectiontest
		sous_section
		let "nbr_sous_section_effectif=nbr_sous_section_effectif+1"
		done

	let "nbr_section_effectif=nbr_section_effectif+1"

	done
	















