#declaration fonction section
section() 
{ 
 echo titre section test
 read titre_section
 valeur="\\";echo -n $valeur >> cer.tex
 valeur="color{red}";echo  $valeur >> cer.tex 	
 valeur="\section{";echo -n $valeur >> cer.tex
 echo  $titre_section} >> cer.tex
}
#fin declaration
