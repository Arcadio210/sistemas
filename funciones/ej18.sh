#!/bin/bash

function validar {
    validate_number='^-?[0-9]+([.][0-9]+)?$'
    if ([ -n "$1" ]); then
        if [[ "$1" =~ $validate_number ]]; then
            echo -n ""
        else     
            echo -n ""
            exit
        fi
    else
        echo -n ""
        exit
    fi
}
function SalarioIncrementado {
    coste=$(( $salario * $2 ))
    NuevoSalario=$(( $coste / 100 ))
    echo "Tu salario es de: $NuevoSalario"
}
echo "Cuantos aÃ±os has trabajado"
read tiempo
validar $tiempo
salario=40000
if ([ $tiempo -ge 0 ]); then
    case $tiempo in
        [5-9])
            SalarioIncrementado $salario 107
            ;;
        [3-4])
            SalarioIncrementado $salario 105
            ;;
        [1-2])
            SalarioIncrementado $salario 103
            ;;
        [0])
            echo "Tu salario es de: $salario"
            ;;
        *)
            SalarioIncrementado $salario 110
            ;;
    esac
else
    echo "No pongas numeros negativos"
fi