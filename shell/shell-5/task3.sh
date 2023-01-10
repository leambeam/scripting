#!/bin/bash

n=1

read -p "Manufacturer: " manufacturer
read -p "Model: " model 
read -p "Color: " color 
read -p "Year: " year 

echo "***********************"

input="${manufacturer},${model},${color},${year}"

add_to_csv(){
echo $input >> cars.csv    
}

add_to_csv 


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
done < cars.csv