#!/bin/bash

<<task

Create a script that creates a new file in user's home directory.
Script asks a new filename from the user and adds current date as an suffix to a filename (Y-M-D).
task

echo "Name the file you want to create : " 
read name
createfile=$(touch /home/user/$name"_"$(date +%Y-%m-%d).txt)