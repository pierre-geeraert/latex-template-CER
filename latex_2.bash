#!/bin/bash


#declaration fonction section
section() 
{ 
 echo titre section
 read titre_section
 valeur="\\";echo -n $valeur >> cer.tex
 valeur="color{red}";echo  $valeur >> cer.tex 	
 valeur="\section{";echo -n $valeur >> cer.tex
 echo  $titre_section} >> cer.tex
}

echo nbr prosit

nbr=12
rm -Rf $HOME/Documents/Prosit_$nbr/

mkdir $HOME/Documents/Prosit_$nbr/
cd $HOME/Documents/Prosit_$nbr/
#wget https://pierre-geeraert.github.io/Capture.PNG #download header of document

valeur="\documentclass{article}";echo  $valeur >> cer.tex
valeur="\usepackage{color}%ajout couleur";echo  $valeur >> cer.tex
valeur="\usepackage{fancyhdr}";echo  $valeur >> cer.tex
valeur="\usepackage{geometry}";echo  $valeur >> cer.tex
valeur="\usepackage{graphicx}";echo  $valeur >> cer.tex
valeur="\usepackage[french]{babel}";echo  $valeur >> cer.tex
valeur="\usepackage{hyperref}%permet hyperlien";echo  $valeur >> cer.tex
valeur="\usepackage[utf8]{inputenc}";echo  $valeur >> cer.tex
valeur="\usepackage{lipsum}%texte en vrac pour mise en forme ";echo  $valeur >> cer.tex
valeur="\usepackage{amsmath}";echo  $valeur >> cer.tex
valeur="\usepackage{xcolor}";echo  $valeur >> cer.tex
valeur="\usepackage{soul}";echo  $valeur >> cer.tex
valeur="\usepackage{array}";echo  $valeur >> cer.tex
valeur="%\usepackage[latin1]{inputenc}";echo  $valeur >> cer.tex
valeur="%\usepackage[T1]{fontenc}";echo  $valeur >> cer.tex
valeur="%\usepackage{layout}";echo  $valeur >> cer.tex
valeur="%\usepackage{geometry}";echo  $valeur >> cer.tex
valeur="%\usepackage{setspace}";echo  $valeur >> cer.tex
valeur="%\usepackage{soul}";echo  $valeur >> cer.tex
valeur="%\usepackage{ulem}";echo  $valeur >> cer.tex
valeur="%\usepackage{eurosym}";echo  $valeur >> cer.tex
valeur="%\usepackage{bookman}";echo  $valeur >> cer.tex
valeur="%\usepackage{charter}";echo  $valeur >> cer.tex
valeur="%\usepackage{newcent}";echo  $valeur >> cer.tex
valeur="%\usepackage{lmodern}";echo  $valeur >> cer.tex
valeur="%\usepackage{mathpazo}";echo  $valeur >> cer.tex
valeur="%\usepackage{mathptmx}";echo  $valeur >> cer.tex
valeur="%\usepackage{url}";echo  $valeur >> cer.tex
valeur="%\usepackage{verbatim}";echo  $valeur >> cer.tex
valeur="%\usepackage{moreverb}";echo  $valeur >> cer.tex
valeur="%\usepackage{listings}";echo  $valeur >> cer.tex
valeur="%\usepackage{fancyhdr}";echo  $valeur >> cer.tex
valeur="%\usepackage{wrapfig}";echo  $valeur >> cer.tex
valeur="%\usepackage{color}";echo  $valeur >> cer.tex
valeur="%\usepackage{colortbl}";echo  $valeur >> cer.tex
valeur="%\usepackage{amsmath}";echo  $valeur >> cer.tex
valeur="%\usepackage{amssymb}";echo  $valeur >> cer.tex
valeur="%\usepackage{mathrsfs}";echo  $valeur >> cer.tex
valeur="%\usepackage{asmthm}";echo  $valeur >> cer.tex
valeur="%\usepackage{makeidx}";echo  $valeur >> cer.tex
valeur="%tout les packages sont a detailler avec les commentaires";echo  $valeur >> cer.tex 
valeur="";echo  $valeur >> cer.tex
#add all packages and documentclass




valeur="\geometry{hmargin=2.5cm,vmargin=1.5cm}";echo  $valeur >> cer.tex
valeur="\pagestyle{fancy}";echo  $valeur >> cer.tex
valeur=" \\";echo -n $valeur >> cer.tex
valeur="fancyhead[C]{\includegraphics[width=";echo -n $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="textwidth]{Capture.PNG}}";echo  $valeur >> cer.tex
valeur=" \\";echo -n $valeur >> cer.tex
valeur="fancyhead[R]{}";echo  $valeur >> cer.tex
valeur="%retirer pied de page ";echo  $valeur >> cer.tex

valeur="\\";echo -n $valeur >> cer.tex
valeur="renewcommand\headrulewidth{0pt}";echo  $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="renewcommand";echo -n $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="footrulewidth{1pt}";echo  $valeur >> cer.tex

#make headers

valeur="";echo  $valeur >> cer.tex #equivalent of space
valeur="\\";echo -n $valeur >> cer.tex
###################################################
valeur="begin{document}";echo  $valeur >> cer.tex
valeur="";echo  $valeur >> cer.tex
valeur="\paragraph{}";echo  $valeur >> cer.tex
valeur="\paragraph{}";echo  $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="tableofcontents";echo  $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="raggedright";echo  $valeur >> cer.tex
valeur="\paragraph{}";echo  $valeur >> cer.tex

#prepare begin of document and table of contents


valeur="\href{";echo -n $valeur >> cer.tex
echo link
#read -r link
#echo -n $link >> cer.tex
valeur="https://doc.ubuntu-fr.org/tutoriel/script_shell";echo -n $valeur >> cer.tex #test
valeur="}{";echo -n $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="color{blue}Intitulée du prosit}";echo  $valeur >> cer.tex

#hyperlink is good

#creer variables pr nbr section et sous section et faire diminuer quand section/sous-section fini


echo nbr sous section
read nbr_sous_section


##########section 
echo nbr section
read nbr_section

while [ "$nbr_section" -ne 0 ];
do
section
let "nbr_section=nbr_section-1"
done






valeur="\\";echo -n $valeur >> cer.tex
valeur="color{red}";echo  $valeur >> cer.tex 	
valeur="\section{";echo -n $valeur >> cer.tex
echo  $titre_section} >> cer.tex
let "nbr_section=nbr_section-1"

echo titre sous section
read titre_sous_section

valeur="\\";echo -n $valeur >> cer.tex
valeur="color{blue}";echo  $valeur >> cer.tex 	

valeur="\subsection{";echo -n $valeur >> cer.tex
echo  $titre_section} >> cer.tex
let "nbr_section=nbr_section-1"




#text is here

valeur="";echo  $valeur >> cer.tex
valeur="\end{document}";echo $valeur >> cer.tex

#now cer.tex is finish


