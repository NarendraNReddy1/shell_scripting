#!/bin/bash
DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then 
        echo "$USAGE is more than $DISK_THRESHOLD for the $FOLDER"
    else 
        echo "No worries for the $FOLDER" 
    fi
done <<< $DISK_USAGE 

