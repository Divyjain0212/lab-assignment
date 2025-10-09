#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

if [ ! -f "$file" ]; then
    echo "Error: File:'$file' does not exist"
    exit 2
fi

if [ -r "$file" ]; then
    echo "The owner has permission to read the file: '$file'."
else
    echo "The owner does not have permission to read the file: '$file'."
fi

if [ -w "$file" ]; then
    echo "The owner has permission to write to the file: '$file'."
else
    echo "The owner does not have permission to write to the file: '$file'."
fi

if [ -x "$file" ]; then
    echo "The owner has permission to execute the file: '$file'."
else
    echo "The owner does not have permission to execute the file: '$file'."
fi
