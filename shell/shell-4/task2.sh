#!/bin/bash

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




