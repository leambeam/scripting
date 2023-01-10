#!/bin/bash

<<task
Create a script that prints 3 random numbers on the terminal and also generates a syslog message with a correlating number for each random number.
Log message priority should be user.info.
Hints: Special variable $RANDOM
task

number1=$RANDOM
number2=$RANDOM
number3=$RANDOM

echo $number1
echo $number2
echo $number3

logger -p user.info "$number1"
logger -p user.info "$number2"
logger -p user.info "$number3"

# cat /var/log/syslog

<<comment 
Sep 24 18:56:30 AB0229-Ubuntu user: 15065
Sep 24 18:56:30 AB0229-Ubuntu user: 6165
Sep 24 18:56:30 AB0229-Ubuntu user: 10484
comment




