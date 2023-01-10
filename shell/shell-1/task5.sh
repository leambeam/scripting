#!/bin/bash 

<<task
Create a script that deletes the given files from the users home directory. Files are passed to the script using a command line arguments (3 values).
(Create a empty files in users home folder to test the functionality). Finally script prints: i deleted the following files: x,y,z
task

if [ $(pwd) = "/home/user" ]
then
    echo "Name the files you want to delete :"
    read input1 input2 input3
    rm -r $input1 $input2 $input3
    echo "I deleted $input1 $input2 $input3"
else 
    echo "This program deletes files only from '/home/user' path"
fi
