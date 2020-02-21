#!/bin/bash
validate_number='^-?[0-9]+([.][0-9]+)?$'

echo "Dime un numero"
read n1
echo "Dime el segundo numero" 
read n2
echo "Dime el tercer numero" 
read n3


if [ -n $n1 ] && [ -n $n2  ] && [ -n $n3 ] && [[ $n1 =~ $validate_number ]] && [[ $n2 =~ $validate_number ]] && [[ $n3 =~ $validate_number ]] ; then
    echo "entrando al if"
    if [ $n1 -gt $n2 ]; then
        if [ $n2 -gt $n3 ]; then
            echo "Estan en ascendente"
        else
            echo "no estan en ascendente"
        fi
    else
        echo "no estan en ascendente"
    fi
else
    exit
fi

    