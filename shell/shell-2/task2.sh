#!/bin/bash

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
