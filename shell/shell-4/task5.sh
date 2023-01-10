#!/bin/bash 


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