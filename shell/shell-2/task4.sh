#!/bin/bash

echo "Note!To create a user you will need your sudo password"
read -p "Name the user : " username


create_user() {
    #creates a user with home directory and sets bash as a default shell
    sudo useradd --create-home --shell /bin/bash ${username}
    echo "The new user $username has been created! Now you can set the password with sudo passwd (name of the user)"
}


if  id -u $username >& /dev/null #made to supress the output from id -u command
then
    echo "This username is taken!" 
else
    create_user
fi


