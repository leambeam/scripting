#!/bin/bash

<<task
Create a script that installs the program using apt, based on the user input. (cowsay etc.)
If the installation is successfull, tell that to the user and exit normally.
If not, inform user and exit with a code 111.
Hints: sudo permissions and apt options
task

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



