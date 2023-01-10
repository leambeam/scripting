#!/bin/bash

echo "Name the file you want to create : " 
read name
createfile=$(touch /home/user/$name"_"$(date +%Y-%m-%d).txt)