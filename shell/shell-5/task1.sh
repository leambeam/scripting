#!/bin/bash

<<task
Create a script that asks values from the user until user decides to end the script.
Given values are added to the end of file called animal.txt
Finally script prints every value from the file.
task

while true 
do
read -p "Input the values or \"q\" to quit : " input
if [ "$input" != "q" ]
then 
    echo $input >> animals.txt
else
    cat animals.txt && break 
fi
done