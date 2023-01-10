#!/bin/bash

<<task
Modify Task 2.
Create a script that prints a number of objects in a given directory to the user. The path is asked from the user.
task

read -p "Ener the path : " input 


count_objects() {
    command=$(cd $input && ls | wc -l)
    echo "Number of the objects in the given directory: $command" 
}

count_objects


