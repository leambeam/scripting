#!/bin/bash 

<<task
Create a script that copies the given file to a path provided by the user. So both paths should be asked from the user.
Finally script prints: "copied the "original file" to "given path"!".
task

echo "Input your desired path : "
read input1

echo "Input the name of a file and its path : "
read input2

cp -r $input2 $input1

echo "Copied the $input2 to $input1"