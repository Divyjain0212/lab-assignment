#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <Process-id>"
    exit 1
fi

PID=$1

if ! ps -p "$PID" > /dev/null 2>&1; then
    echo "Process id: '$PID' not found"
    exit 2
fi

kill "$PID" 2> /dev/null

if [ $? -eq 0 ]; then
    echo "Process id: '$PID' killed successfully"
else
    echo "Failed to kill process '$PID' — it may require elevated privileges."
fi