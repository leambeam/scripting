#!/bin/bash

declare -a array=()
path=0

# Reads input from the user and puts it into the array 
while [ $path != "q" ]; do
    read -p "Enter the path or \"q\" to quit:  : " path
    array+=("$path")
done

# Counts objects in directories and prints the output 
count_objects() {
    for path in $@; do
        command=$(cd $path && ls | wc -l)
        echo "There are $command objects in $path"
    done

}

echo "*********************************"

# Prints the array line by line 
unset array[-1]
for key in ${!array[@]}; do
    echo "${key}:${array[$key]}" >& /dev/null # Supress the output of the command
done



count_objects ${array[@]}








