#!/bin/bash

echo "You have to source .sh file first and have 'tree' installed"
echo "Input your desired directory path : "
read input && cd $input
tree | tail -1

