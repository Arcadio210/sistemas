#!/bin/bash
validate_number='^-?[0-9]+([.][0-9]+)?$'
echo "dime un peso en kg"
read peso1

if [ -n $peso1 ] && [[ $peso1 =~ $validate_number ]]; then 

echo "a que voleu convertir?"
echo "1.- Miligramos"
echo "2.-Centigramos"
echo "3.- Decigramos"
echo "4.- Gramos"
echo "5.- Exit"
read opcio
case $opcio in 
    "1")
    echo "convirtiendo a miligramos..."
    conversion=$(( $peso1 * 1000000 ))
    echo "$peso1 kg es en miligramos $conversion mg"
    ;;

    "2")
    echo "convirtiendo a centigramos..."
    conversion=$(( $peso1 * 100000 ))
    echo "$peso1 kg es en miligramos $conversion cg"
    ;;

    "3")
    echo "convirtiendo a decigramos..."
    conversion=$(( $peso1 * 10000 ))
    echo "$peso1 kg es en miligramos $conversion dg"
    ;;

    "4")
    echo "convirtiendo a gramos..."
    conversion=$(( $peso1 * 1000 ))
    echo "$peso1 kg es en miligramos $conversion g"
    ;;

    *)
        exit
        echo "saliendo"
    ;;
esac

else

    echo "no has escrito ningun peso ni numero"

fi