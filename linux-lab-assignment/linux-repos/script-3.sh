#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <source_path> <destination_path>"
    exit 1
fi

SOURCE=$1
DESTINATION=$2

if  [ ! -f "$SOURCE" ]; then
    echo "Error File: Source File: '$SOURCE' does not exists and is not a regular file"
    exit 2
fi

DEST_DIR=$(dirname "$DESTINATION")
if [ ! -d "$DEST_DIR" ]; then
    echo "Error destination directory '$DEST_DIR' does not exists"
    exit 3
fi

cp "$SOURCE" "$DESTINATION"
if [ $? -eq 0 ]; then
    echo "File copied successfully from '$SOURCE' to '$DESTINATION'."
else
    echo "Error: Failed to copy file"
    exit 4
fi


