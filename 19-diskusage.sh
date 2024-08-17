#!/bin/bash
DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=2

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

while IFS= read -r line
do
    echo "$line"
done <<< $DISK_USAGE

