#!/bin/bash

echo "Dime un numero"
read n1
echo "Dime el segundo numero" 
read n2
echo "Dime el tercer numero" 
read n3
echo "Dime el cuarto numero" 
read n4
echo "Dime el quito numero" 
read n5

max=$n1
min=$n1

if [ $n1 -gt $max ]; then
    max=$n1
else
    exit
fi

if [ $n1 -lt $min ]; then
    min=$n1
fi

if [ $n2 -gt $max ]; then
    max=$n2
 
fi

if [ $n2 -lt $min ]; then
    min=$n2
fi

if [ $n3 -gt $max ]; then
    max=$n3
 
fi

if [ $n3 -lt $min ]; then
    min=$n3
fi

if [ $n4 -gt $max ]; then
    max=$n4
 
fi

if [ $n4 -lt $min ]; then
min=$n4
fi

if [ $n5 -gt $max ]; then
    max=$n5
 
fi

if [ $n5 -lt $min ]; then
    min=$n5
fi

echo "$max es el maximo"
echo "$min es el minimo "