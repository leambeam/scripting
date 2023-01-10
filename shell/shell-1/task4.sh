#!/bin/bash 

echo "Input your desired path : "
read input1

echo "Input the name of a file and its path : "
read input2

cp -r $input2 $input1

echo "Copied the $input2 to $input1"