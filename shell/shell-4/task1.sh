#!/bin/bash

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