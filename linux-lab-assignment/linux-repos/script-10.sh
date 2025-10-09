#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

if [ ! -e "$file" ]; then
    echo "file: $file does not exist"
    exit 2
else
    if [ -f "$file" ]; then
        echo "No of words: $(wc -w < $file)"
        echo "No of characters: $(wc -c < $file)"
        echo "No of lines: $(wc -l < $file)"
    fi
fi

