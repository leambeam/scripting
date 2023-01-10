#!/bin/bash

<<task
Create a script to automate user creation. NOTE: no password setup!
Script asks username from the user and before the user is created, script must check if the user with that name exists.
Use the following syntax in you conditional statement: if id -u USERNAME. If the user doesn't exist, conditional statement returns false (actual id command returns "no such user" / error code 1).
New user must have home directory under the /home/ directory and default shell as bash.
Hint: User creation needs sudo permissions, how to execute script with it?
task

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


