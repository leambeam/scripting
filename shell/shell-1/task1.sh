#!/bin/bash

<<task
Create a script that takes two command line arguments.
Script returns the following arithmetic solutions: addition, substraction, multiplication
task

# Input section 
echo Input your first number:
read num1

echo Input your second number: 
read num2

#Calculations

let addition=$num1+$num2
echo addition:$addition

let substraction=$num1-$num2
echo substraction:$substraction

let multiplication=$num1*$num2
echo multiplication:$multiplication