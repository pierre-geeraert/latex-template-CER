#!/bin/bash


#declaration fonction section
source fonction.bash

echo nbr prosit
read nbr



mkdir $HOME/Documents/Prosit_$nbr/
cd $HOME/Documents/Prosit_$nbr/
wget https://pierre-geeraert.github.io/Capture.PNG #download header of document

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
valeur="\hypersetup{%";echo  $valeur >> cer.tex
valeur=" colorlinks = true,  linkcolor  = black} ";echo  $valeur >> cer.tex
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
read -r link
echo -n $link >> cer.tex
valeur="}{";echo -n $valeur >> cer.tex
valeur="\\";echo -n $valeur >> cer.tex
valeur="color{blue}Intitulée du prosit}";echo  $valeur >> cer.tex

#hyperlink is good






##########section 



echo nbr section 
read nbr_section_voulu
nbr_section_effectif=1


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
		sous_section
		let "nbr_sous_section_effectif=nbr_sous_section_effectif+1"
		done

	let "nbr_section_effectif=nbr_section_effectif+1"

	done



####################################text is here

valeur="";echo  $valeur >> cer.tex
valeur="\end{document}";echo $valeur >> cer.tex

##########################now cer.tex is finish

pdflatex cer.tex && pdflatex cer.tex # I compile twice to have the best tableof contents
firefox cer.pdf #change firefox with your pdf viewer software 
thunar 
