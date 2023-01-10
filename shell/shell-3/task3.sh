#!/bin/bash
read -p "Ener the path : " input 


count_objects() {
    command=$(cd $input && ls | wc -l)
    echo "Number of the objects in the given directory: $command" 
}

count_objects


