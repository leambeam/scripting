#!/bin/bash

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





