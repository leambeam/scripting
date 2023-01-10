#!/bin/bash

<<task

Modify Exercise set 2, Task 5 (Create a script that mimics a simple calculator).
Change the logic that all operations are calculated by using functions.
task

while true; do
    # Quits the program if the "q" is printed
    read -p "Print \"q\" to quit or press \"Enter\" to continue : " input
    if [ "$input" = "q" ]
    then
        break
    else
        # Input type of operation
        echo "Available operations:"
        echo "-"
        echo "+"
        echo "*"
        echo "/"
        read -p "Enter the operator : " operation

        # Take user Input
        echo "Enter the first number : "
        read a
        echo "Enter the second number : "
        read b



        # Functions that solve operations 
        substraction() {
            result=$( expr $a - $b | bc )
        }

        addition() {
           result=$( expr $a + $b | bc )
        }

        multiplication() {
            result=$( expr $a \* $b | bc )
        }

        division() {
            result=$( expr "scale=2; $a / $b" | bc ) 
        }
        
        # Calls a function according to the user input 
        if [ "$operation" = "-" ]
        then 
            substraction
        elif [ "$operation" = "+" ]
        then 
            addition
        elif [ "$operation" = "*" ]
        then 
            multiplication
        elif [ "$operation" = "/" ]
        then 
            division
        fi

        echo ----------------------------------------
        echo "Result of $a $operation $b = $result"
        echo ----------------------------------------
    fi
done
