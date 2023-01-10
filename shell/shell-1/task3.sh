#!/bin/bash

<<task
Create a script that returns how many objects are in the given directory (do not include hidden files). Directory path is asked from the user.
Hints:
wc command might be useful.
task

echo "You have to source .sh file first and have 'tree' installed"
echo "Input your desired directory path : "
read input && cd $input
tree | tail -1

