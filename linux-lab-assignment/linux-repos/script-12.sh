#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_to_backup>"
    exit 1
fi
dir=$1
if [ ! -d "$dir" ]; then
    echo "Error: '$dir' is not a valid directory."
    exit 2
fi
timestamp=$(date +"%d.%m.%Y_%H-%M-%S")
backup_file="backup_$(basename "$dir")_${timestamp}.tar.gz"
tar -czf "$backup_file" "$dir"
if [ $? -eq 0 ]; then
    echo "Backup successful! File created: $backup_file"
else
    echo "Backup failed."
fi