#!/bin/bash
validate_number='^-?[0-9]+([.][0-9]+)?$'

function validar {

    if [ -n $n1 ] && [[ $n1 =~ $validate_number ]] && [ -n $n2 ] && [[ $n2 =~ $validate_number ]] ; then
        echo "Resultado: "   
    else
        exit
    fi
}


echo "que voleu fer?"
echo "1.- Sumar"
echo "2.-Restar"
echo "3.- Multiplicar"
echo "4.- Dividir"
echo "5.- exit"
read opcio
case $opcio in 
    "1")
    echo "dime el primer numero"
    read n1
    echo "dime el segundo numero"
    read n2
    validar
        multi=$(( $n1 + $n2 ))
        echo $multi
    
        
    ;;

    "2")
    echo "dime el primer numero"
    read n1
    echo "dime el segundo numero"
    read n2
    validar
        multi=$(( $n1 + $n2 ))
        echo $multi    ;;

    "3")
    echo "dime el primer numero"
    read n1
    if [[ $n1 =~ $validate_number ]]; then
        echo "dime el segundo numero"
        read n2
            if [[ $n2 =~ $validate_number ]]; then
                multi=$(( $n1 * $n2 ))
                echo $multi
            else
            exit
            fi
    else
        exit
    fi
    ;;

    "4")
    echo "dime el primer numero"
    read n1
    if [[ $n1 =~ $validate_number ]]; then
        echo "dime el segundo numero"
        read n2
            if [[ $n2 =~ $validate_number ]]; then
                divi=$(( $n1 / $n2 ))
                echo $divi
            else
            exit
            fi
    else
        exit
    fi
    ;;

    *)
        echo "saliendo"
        exit
    ;;
esac