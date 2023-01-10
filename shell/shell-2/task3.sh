#!/bin/bash

echo "Name the file/directory.Control+C to stop"
 

while [ true ]
do
    read input && file ${input}
done