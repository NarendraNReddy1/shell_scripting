#!/bin/bash
DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=5

# while IFS= read -r line
# do 
#     USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%"  -f1)
#     FOLDER=$(echo $line | awk -F " " '{print $NF}')
#     if [ $USAGE >= $DISK_THRESHOLD ]
#     then
#         echo "$USAGE is excceds $DISK_THRESHOLD for the $FOLDER"
#     else 
#         echo "Withing range no worries"    
#     fi
# done <<< $DISK_USAGE
# $ df -hT | grep xfs | awk -F " " '{print $6F}' | cut -d "%" -f1

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $6F}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then 
        echo "Usage is more"

    fi
done <<< $DISK_USAGE 

