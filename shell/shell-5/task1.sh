#!/bin/bash

while true 
do
read -p "Input the values or \"q\" to quit : " input
if [ "$input" != "q" ]
then 
    echo $input >> animals.txt
else
    cat animals.txt && break 
fi
done