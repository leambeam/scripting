#!/bin/bash

file="superhero.json"

input=0
echo "To exit the program enter \"q\" "
while [ "$input" != "q" ]
do 
    echo "*******************"
    echo "Heroes that are currently in the lsit:"
    jq -r '.members[] | .name' $file
    read -p "Choose the hero by entering 1,2 or 3: " input 
        if [ "$input" = 1 ]
        then 
            echo "*******************"
            echo "What do you want to see?"
            echo -e "1.Superpowers\n2.Secret indentity"
            read -p "Enter a number: " input 
            echo "*******************"
                if [ "$input" = 1 ]
                then 
                    jq -r '.members[0] | .powers[]' $file 
                elif [ "$input" = 2 ]
                then
                    jq -r '.members[0] | .secretIdentity' $file
                fi
        
        elif [ "$input" = 2 ]
        then 
            echo "*******************"
            echo "What do you want to see?"
            echo -e "1.Superpowers\n2.Secret indentity"
            read -p "Enter a number: " input 
            echo "*******************"
                if [ "$input" = 1 ]
                then 
                    jq -r '.members[1] | .powers[]' $file 
                elif [ "$input" = 2 ]
                then
                    jq -r '.members[1] | .secretIdentity' $file
                fi
        elif [ "$input" = 3 ]
        then 
            echo "*******************"
            echo "What do you want to see?"
            echo -e "1.Superpowers\n2.Secret indentity"
            read -p "Enter a number: " input 
            echo "*******************"
                if [ "$input" = 1 ]
                then 
                    jq -r '.members[2] | .powers[]' $file 
                elif [ "$input" = 2 ]
                then
                    jq -r '.members[2] | .secretIdentity' $file       
                fi
        fi
done
