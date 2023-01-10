#!/bin/bash

read -p "Enter the name of the program you want to download : " input
sudo apt install $input

if [ ${?} -eq 0 ]
then 
    echo "The program has been installed succesefully!"
    return 0
else 
    echo "The program was not installed!"
    return 111
fi 



