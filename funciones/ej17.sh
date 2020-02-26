#!/bin/bash
validate_number='^-?[0-9]+([.][0-9]+)?$'

function descuento {
    desc=$(( $precio * 10 / 100 ))
    precio=$(( $precio - $desc ))
    aum=$(( $precio * 21 / 100 ))
    precio=$(( $precio + $aum ))
    echo "$precio es el precio final despues del descuento"
}

function aumento {
    aum=$(( $precio * 21 / 100 ))
    precio=$(( $precio + $aum ))
    echo "$precio es el precio final despues del descuento"

}

echo "dime el precio del producto"
read precio

echo "quieres un descuento?  s/n"
read opcion

if [ $opcion == 's' ]; then
    descuento

else if [ $opcion == 'n' ]; then
    aumento
    fi
fi