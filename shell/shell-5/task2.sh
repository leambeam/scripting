#!/bin/bash

<<task
Create a script that reads cars.csv file.
File that is read must be given at the script startup as a command line argument.
Script reads information from the file and prints the values to the user.
Output format:
--- Line 1 ---
Manufacturer: X
Model: X
Color: X
Year: X
--- Line 2 ---
Manufacturer: Y
Model: Y
Color: Y
Year: Y
task

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

