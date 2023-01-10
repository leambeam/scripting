#!/bin/bash

<<task
Create a script that prints a number of objects in the directory where you executed the script from.
Script must consist a function called count_objects. Function must have one local variable, that will hold the actual value, before it's printed to the user.
Hints:
Function has a print functionality. wc command might be useful.
task

count_objects() {
    command=$(ls | wc -l)
    echo "Number of the objects in your active directory: $command "
}

count_objects











