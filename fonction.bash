###################################declaration fonction section
section() 
	{
	 
	clear
	echo nous somme dans la section $nbr_section_effectif
	echo titre section ?
	read titre_section
	valeur="\\";echo -n $valeur >> cer.tex
	valeur="newpage";echo  $valeur >> cer.tex 	
	valeur="\\";echo -n $valeur >> cer.tex
	valeur="color{red}";echo  $valeur >> cer.tex 	
	valeur="\section{";echo -n $valeur >> cer.tex
	echo  $titre_section} >> cer.tex
	valeur="\\";echo -n $valeur >> cer.tex
	valeur="color{black}";echo  $valeur >> cer.tex
	valeur="";echo  $valeur >> cer.tex
	}
#############################################fin declaration




###########################declaration fonction sous section
sous_section() 
	{ 
	echo titre sous section $nbr_sous_section_effectif
	read titre_sous_section
	valeur="\\";echo -n $valeur >> cer.tex
	valeur="color{blue}";echo  $valeur >> cer.tex 	
	valeur="\subsection{";echo -n $valeur >> cer.tex
	echo  $titre_sous_section} >> cer.tex
	valeur="\\";echo -n $valeur >> cer.tex
	valeur="color{black}";echo  $valeur >> cer.tex
	valeur="";echo  $valeur >> cer.tex
	valeur="";echo  $valeur >> cer.tex
	}
############################################""fin declaration

