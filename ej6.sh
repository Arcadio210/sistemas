#!/bin/bash

arg1=$1
arg2=$2

echo "1.- Comparar string desde argumentos"
echo "2.- Comparar string desde entrada de usuario"
echo "3.- Sortir"
read opcion

if [ "$opcion" == "1" ]; then
    if [ $# == 2 ]; then
        if [ -n "$arg1" ] && [ -n "$arg2" ]; then
            if [ "$arg1" == "$arg2" ]; then
                echo "son iguales"
            else
                echo "no son iguales"
            fi
        fi
    fi
        

fi

if [ "$opcion" == "2" ]; then
    echo "Dime un valor"
    read v1
    echo "Dime otro valor"
    read v2
    echo "Dime otro valor mas"
    read v3
    if [ -z "$v1" ] || [ -z "$v2" ] || [ -z "$v3" ]; then 
        echo "Hay algo vacio"
    else
        echo "Enhorabuena"
    fi
fi

if [ "$opcion" == "3" ]; then
    echo "quieres salir si/Si/SI"
    read s1
    if [ $s1 == "si" ] || [ $s1 == "Si" ] || [ $s1 == "SI" ]; then
        echo "Nos vamos"
        exit
    else
        echo "Nos vamos igualmente"
        exit
    fi
fi