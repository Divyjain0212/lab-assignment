#!/bin/bash
read -p "Enter the pattern to search: " pattern
awk -v pat="$pattern" '
$0 ~ pat {
    print "Matched Line: " $0
    print "Custom Message: This line contains the pattern!"
}' data.txt