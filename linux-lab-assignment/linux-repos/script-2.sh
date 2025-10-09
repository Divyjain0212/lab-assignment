#!/bin/bash

read -p "Enter filename:" filename

if [ -e "$filename" ]; then
    if [ -f "$filename" ]; then
        echo "$filename exists and it is a regular file"
    elif [ -d "$filename" ]; then
        echo "$filename exists and it is a directory"
    else
        echo "$filename exists but it is not a regular file or directory"
    fi
else
    echo "$filename does not exists"
fi