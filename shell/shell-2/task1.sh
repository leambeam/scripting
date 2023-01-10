#!/bin/bash

<<task
Create a script that asks a file to remove from the user.
File is removed if it's a regular file and it's empty, otherwise some kind of error message is printed.
task

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
