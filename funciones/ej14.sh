#!/bin/bash
validate_number='^-?[0-9]+([.][0-9]+)?$'

fitxer="/home/alumno/usuariNormal.txt"

if [ -s "$fitxer" ]; then 
echo "el fitxer ja existeix"
else
touch /home/alumno/usuariNormal.txt
fi


