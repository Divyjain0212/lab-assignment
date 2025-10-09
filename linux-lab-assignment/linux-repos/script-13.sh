#!/bin/bash
read -p "Enter time in 24-hour format (HH:MM): " time
read -p "Enter the full command or script path to run: " task
hour=${time%%:*}
minute=${time##*:}
(crontab -l 2>/dev/null; echo "$minute $hour * * * $task") | crontab -
echo "Task scheduled at $hour:$minute"