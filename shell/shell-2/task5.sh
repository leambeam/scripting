#!/bin/bash

<<task
Create a script that mimics a simple calculator.
At first, script asks the operation from the user (-, +, *, / ). After the user selects operation, two values are asked and the outcome is printed to the user.
Script execution stops when the user selects "exit" operation.
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

        # Solves operations
        case $operation in
        "-")res=`echo $a - $b | bc`
        ;;
        "+")res=`echo $a + $b | bc`
        ;;
        "*")res=`echo $a \* $b | bc`
        ;;
        "/")res=`echo "scale=2; $a / $b" | bc`
        ;;
        esac
        echo ----------------------------------------
        echo "Result of $a $operation $b = $res"
        echo ----------------------------------------

    fi
done

