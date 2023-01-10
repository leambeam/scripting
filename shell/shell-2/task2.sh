#!/bin/bash

<<task
Write a shell script that checks if the file /etc/hosts exists.
If the file exists, script prints the outcome: /etc/hosts available.
Also check can you write in the file.
Script prints the outcome: You have permission to edit the file OR you dont have permission to edit the file
task

echo "searching /etc/hosts"

file="/etc/hosts"

if [ -e "$file" ] # checking if the file exists
then
    echo "$file available"
else
    echo "$file is not available"
fi

if [ -w "$file" ] # checking if the write permission is granted
then
    echo "You have permission to edit the file"
else
    echo "You do not have a permission to edit the file"
fi
