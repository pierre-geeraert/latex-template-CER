#!/bin/sh
echo nbr prosit

nbr=12
rm -Rf $HOME/Documents/Prosit_$nbr/

mkdir $HOME/Documents/Prosit_$nbr/
cd $HOME/Documents/Prosit_$nbr/

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
valeur=" \renewcommand\headrulewidth{0pt}";echo  $valeur >> cer.tex
valeur=" \renewcommand\footrulewidth{1pt}";echo  $valeur >> cer.tex

#make headers

valeur="\begin{document}";echo  $valeur >> cer.tex
valeur="\paragraph{}";echo  $valeur >> cer.tex
valeur="\paragraph{}";echo  $valeur >> cer.tex
valeur=" \tableofcontents";echo  $valeur >> cer.tex
valeur=" \raggedright";echo  $valeur >> cer.tex
valeur="\paragraph{}";echo  $valeur >> cer.tex

#prepare begin of document and table of contents


valeur="\href{";echo  $valeur >> cer.tex

