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
echo "Dime el sexto numero" 
read n6
echo "Dime el septimo numero" 
read n7 
echo "Dime el octavo numero" 
read n8 

touch numeros.txt

echo $n1 >> numeros.txt
echo $n2 >> numeros.txt
echo $n3 >> numeros.txt
echo $n4 >> numeros.txt
echo $n5 >> numeros.txt
echo $n6 >> numeros.txt
echo $n7 >> numeros.txt
echo $n8 >> numeros.txt

cat numeros.txt | sort -n

