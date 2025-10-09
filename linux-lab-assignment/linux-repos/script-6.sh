#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <string1> <string2>"
    exit 1
fi

string1=$1
string2=$2
if [ "$string1" == "$string2" ]; then
    echo "string1 and string2 both are equal"
else
    echo "string1: "$string1" and string2: "$string2" are not equal"
fi