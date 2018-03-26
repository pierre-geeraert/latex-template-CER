#!/bin/bash
file_explorer="nautilus"

#declaration fonction section
source fonction.bash

echo nbr prosit
read nbr

echo nom prosit
read nom

mkdir -p $HOME/Documents/exia/"Prosit_$nbr$nom"/
cd $HOME/Documents/exia/"Prosit_$nbr$nom"/
wget https://pierre-geeraert.github.io/Capture.PNG #download header of document
wget https://pierre-geeraert.github.io/logo.jpeg #download logo for item

echo -E '\documentclass{article}
\usepackage{color}%ajout couleur
\usepackage{fancyhdr}
\usepackage{geometry}
\usepackage{graphicx}
\usepackage[french]{babel}
\usepackage{hyperref}%permet hyperlien
\usepackage[utf8]{inputenc}
\usepackage{lipsum}%texte en vrac pour mise en forme
\usepackage{amsmath}
\usepackage{xcolor}
\usepackage{soul}
\usepackage{array}
\usepackage{draftwatermark}
%\usepackage[latin1]{inputenc}
\usepackage[T1]{fontenc}
%\usepackage{layout}
%\usepackage{geometry}
%\usepackage{setspace}
%\usepackage{soul}
%\usepackage{ulem}
%\usepackage{eurosym}
%\usepackage{bookman}
%\usepackage{charter} 
%\usepackage{newcent}
%\usepackage{lmodern}
%\usepackage{mathpazo}
%\usepackage{mathptmx}
%\usepackage{url}
%\usepackage{verbatim}
%\usepackage{moreverb}
%\usepackage{listings}
%\usepackage{fancyhdr}
%\usepackage{wrapfig}
%\usepackage{color}
%\usepackage{colortbl}
%\usepackage{amsmath}
%\usepackage{amssymb}
%\usepackage{mathrsfs}
%\usepackage{asmthm}
%\usepackage{makeidx}' >> cer.tex



echo -E '
%----------------------------texte en filigrane
\SetWatermarkLightness{0.75}
\SetWatermarkAngle{35}
\SetWatermarkScale{2}
\SetWatermarkFontSize{2cm}'>> cer.tex
echo  -E '\SetWatermarkText{Prosit '$nbr'}  

%----------------------------'>> cer.tex



echo -E '
%retirer encadré rouge sommaire
\hypersetup{%
colorlinks = true, linkcolor = black}' >> cer.tex

echo -E '
\geometry{hmargin=2.5cm,vmargin=1.5cm}
%\pagestyle{fancy}
%\fancyhead[R]{}
%retirer pied de page
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{1pt}' >> cer.tex



echo -E '
%----------------------------creation bigcenter
\makeatletter
\newskip\@bigflushglue \@bigflushglue = -100pt plus 1fil
\def\bigcenter{\trivlist \bigcentering\item\relax}
\def\bigcentering{\let\\\@centercr\rightskip\@bigflushglue%
\leftskip\@bigflushglue
\parindent\z@\parfillskip\z@skip}
\def\endbigcenter{\endtrivlist}
\makeatother
%----------------------------' >> cer.tex


echo -E '
\newcommand{\ligne}{\newline
\newline}
\newcommand{\headers}{%----------------------------headers
\begin{figure}[!h]
\centering
\vspace{-1.5cm}
\bigcenter
\includegraphics[scale=1.05]{Capture.PNG}
\end{figure}
%----------------------------
}' >> cer.tex



echo -E '
\newcommand{\newpageE}{\newpage
\headers}
\newcommand{\itemExia}{\item[\includegraphics{./logo.jpeg}]}
' >> cer.tex



echo -E '
\begin{document}
\headers

\huge' >> cer.tex
echo -E '\center{Prosit' $nbr '-' $nom '}' >> cer.tex

echo -E '
\normalsize
\paragraph{}
\paragraph{}
\tableofcontents
\raggedright
\paragraph{}
' >> cer.tex

#prepare begin of document and table of contents


echo link
read -r link

echo -E '\href{'$link'}{\color{blue}Intitulée du prosit} ' >> cer.tex



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
firefox cer.pdf && #change firefox with your pdf viewer software 
curl https://pierre-geeraert.github.io/erase.sh|sh
#$file_explorer 
