#!/bin/bash
file="data.txt"
if [ ! -f "$file" ]; then
    echo "Error: $file not found!"
    exit 1
fi
awk '$2 > 10' "$file"