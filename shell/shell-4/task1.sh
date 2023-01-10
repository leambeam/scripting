#!/bin/bash

<<task
Create a script that asks URL from the user and a function that tries to ping it with a 1 package.
If ping is successfull, return a exit code 0.
If not, return a exit code 1.
Based on the exit code that the function returned, print outcome to user.
task

read -p "Enter the URL you want to ping: " input

myping(){
    ping -c 1 ${input} >& /dev/null #supressing output of the ping command
    if [ ${?} -eq 0 ]
    then
        echo "The ping command run successfully!"
        return 0
   else
        echo "The ping command run unsuccessfully!Try again."
        return 1
    fi
}

myping