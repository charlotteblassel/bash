#!/bin/bash
read -p 'Entrez un chiffre à mettre au carré : ' number
let "squared = $number**2"
echo "Le carré de $number est $squared"
