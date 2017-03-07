#! /bin/bash

a_trouver=$(($RANDOM % 100))

echo "entrez un nombre compris entre 0 et 100"
read i
while [ "$i" -ne "$a_trouver" ]; do
        if [ "$i" -lt "$a_trouver" ]; then
                echo "trop petit, entrez un nombre compris entre 0 et 100"
        else
                echo "trop grand, entrez un nombre compris entre 0 et 100"
        fi
        read i
done
echo "bravo, le nombre etait en effet $a_trouver"
