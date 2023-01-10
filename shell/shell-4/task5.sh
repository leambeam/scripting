#!/bin/bash 

<<task
Create a script that has 3 functions: mk_folder, download_image and change_perm.

mk_folder function asks a new folder path from the user and creates the folder.
download_image function downloads the following image to the previously created directory and renames it as a linux-tux.png: image

change_perm function sets the folder and image permissions in a way that only owner has rights to them (rwx).

Every possible variable substitution and command execution must be shown in the terminal during the execution.
task


mk_folder() {
    read -p "Enter a new folder path to create a folder :" folder_name
    mkdir $folder_name
}


download_image() {
    wget https://student.labranet.jamk.fi/~pekkju/script/tux.png -P $folder_name 
    mv $folder_name/tux.png $folder_name/linux-tux.png
}


change_perm() {
    chmod 700 $folder_name
    chmod 700 $folder_name/linux-tux.png
}

set -x
mk_folder

download_image

change_perm
set +x