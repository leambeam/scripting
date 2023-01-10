#!/bin/bash

read -p "Enter the name of a file with and its extension : " input
n=1

while IFS=',' read manufacturer model color year
do
    if [ "$manufacturer" = "Manufacturer" ] # Withount an if loop the program will print blank line
    then
        continue 
    else 
        echo "--- Line ${n} ---"
        echo "Manufacturer: $manufacturer"
        echo "Model: $model"
        echo "Color: $color"
        echo "Year: $year"
        n=$(( n + 1 ))
    fi 
done < $input 

