#!/bin/sh
echo votre nom /add sias tu ce que tu veux dire pour auto-completer en remplacantr lispsum[100]
read -r name
echo nbr prosit
read -r nbr
mkdir /home/$name/Documents/exia/Prosit_$nbr/
cd /home/$name/Documents/exia/Prosit_$nbr/
wget https://raw.githubusercontent.com/pierre-geeraert/latex-template-CER/master/template.tex
wget https://github.com/pierre-geeraert/pierre-geeraert.github.io/blob/master/Capture.PNG #download header of document


mv template.tex cer.tex

################################################
clear
echo section 1
read -r section1
sed -i "s/^section1/$section1/"  cer.tex

echo subsection 1-1
read -r subsection11
sed -i "s/^subsection11/$subsection11/"  cer.tex

echo subsection 1-2
read -r subsection12
sed -i "s/^subsection12/$subsection12/"  cer.tex

echo subsection 1-3
read -r subsection13
sed -i "s/^subsection13/$subsection13/"  cer.tex

#################################################
clear
echo section 2
read -r section2
sed -i "s/^section2/$section2/"  cer.tex

echo subsection 2-1
read -r subsection21
sed -i "s/^subsection21/$subsection21/"  cer.tex

echo subsection 2-2
read -r subsection22
sed -i "s/^subsection22/$subsection22/"  cer.tex

echo subsection 2-3
read -r subsection23
sed -i "s/^subsection23/$subsection23/"  cer.tex

#################################################
clear
echo section 3
read -r section3
sed -i "s/^section3/$section3/"  cer.tex

echo subsection 3-1
read -r subsection31
sed -i "s/^subsection31/$subsection31/"  cer.tex

echo subsection 3-2
read -r subsection32
sed -i "s/^subsection32/$subsection32/"  cer.tex

echo subsection 3-3
read -r subsection33
sed -i "s/^subsection33/$subsection33/"  cer.tex
#################################################
clear
pdflatex cer.tex && pdflatex cer.tex
firefox cer.pdf
