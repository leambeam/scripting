#!/bin/bash

change_conf(){
    sed -i "s/80/${1}/g;s/index.html/${2}/g" example.conf
}

change_conf ${1} ${2}