#!/bin/bash

<<task
Create a script that asks values from the user until user types exit. All the values are saved in array. Finally script prints out the whole array (line by line) using the following syntax: index: value.
task

declare -a array=() #Declaring of an empty array 
while true; do
    echo "Enter a number or \"q\" to quit: "
    read input
    array+=("$input") #Appending of the input to the array 
    if [ "$input" = "q" ]
    then
       unset array[-1] #Made to prevent \"q\" from displaying in the array 
       for index in ${!array[@]}
        do
            echo "index: ${index}, value: ${array[$index]}"
        done
        break
    fi
done





