#!/bin/bash

<<task
Create a script that returns a type of objects given (file or directory or something else).
User can give unlimited number of paths using the commandline arguments.
Every object type is printed on the own line.
task

echo "Name the file/directory.Control+C to stop"
 

while [ true ]
do
    read input && file ${input}
done