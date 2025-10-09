#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <file_or_directory> <search_string>"
    exit 1
fi

target=$1
search=$2

# Check if target exists
if [ ! -e "$target" ]; then
    echo "Error: '$target' does not exist."
    exit 2
fi

# Search function
if [ -f "$target" ]; then
    grep -n "$search" "$target" 2>/dev/null || echo "No matches found in file '$target'."
elif [ -d "$target" ]; then
    matches=$(grep -rnwi "$search" "$target" 2>/dev/null)
    if [ -z "$matches" ]; then
        echo "No matches found in directory '$target'."
    else
        echo "$matches"
    fi
else
    echo "'$target' is neither a file nor a directory."
    exit 3
fi
