#!/bin/bash 

if [ $(pwd) = "/home/user" ]
then
    echo "Name the files you want to delete :"
    read input1 input2 input3
    rm -r $input1 $input2 $input3
    echo "I deleted $input1 $input2 $input3"
else 
    echo "This program deletes files only from '/home/user' path"
fi
