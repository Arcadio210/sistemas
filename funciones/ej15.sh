#!/bin/bash
validate_number='^-?[0-9]+([.][0-9]+)?$'


fitxer="/home/alumno/scriptsSI"

if [ -f "$fitxer" ]; then 
mv $fitxer /home/alumno/scriptsBash
else
mkdir scriptBash
fi
