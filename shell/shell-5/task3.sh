#!/bin/bash

<<task
Modify the task 2.
Script should have function that adds a new entry to the cars.csv file based on the user input.
Every value must be asked from the user separately and value/values added should be given to the function as an argument.
Hints:
Remember delimiters.
One string might be easier than multiple --> how you can combine multiple strings (concatenate)?
task

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