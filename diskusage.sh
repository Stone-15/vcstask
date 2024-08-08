#!/bin/bash  

# Script to monitor disk usage and send an alert if usage exceeds 80%  

THRESHOLD=80  
CURRENT_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')  

if [ "$CURRENT_USAGE" -gt "$THRESHOLD" ]; then  
    echo "WARNING: Disk usage is above ${THRESHOLD}% (current usage: ${CURRENT_USAGE}%)"  
    # Add logic here to send an email alert if necessary  
else  
    echo "Disk usage is under control (current usage: ${CURRENT_USAGE}%)"  
fi