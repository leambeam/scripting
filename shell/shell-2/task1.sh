#!/bin/bash

echo "Name the file you want to remove"
read input

if [ -f "$input" ]
then 
    if [ -s "$input" ]
    then 
        echo "Can not delete a file because it is not empty!"
    else 
        rm $input && echo "File met all the criterias and has been removed"
    fi
else 
    echo "The file either does not exist or is not regular!"
fi
