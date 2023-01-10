#!/bin/bash

<<task
Create a script that has a function called network_information that shows the following information:

ip address: 
hostname: 

Log the messages in the syslog with a custom tag "network-information".
Hints: Utilize arrays and ip or hostname commands with options
task

network_information() {
    ip=$(hostname -I)
    host=$(hostname)
    echo "IP: $ip"
    echo "Hostname: $host"
    logger -t "network_information" $ip
    logger -t "network_information" $host  
}

network_information


# cat /var/log/syslog

<<comment 
Sep 19 18:38:20 AB0229-Ubuntu network_information: 172.21.2.62
Sep 19 18:38:20 AB0229-Ubuntu network_information: AB0229-Ubuntu
comment 
