#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

PATH=/tmp/app-logs

if [ -d $PATH ]
then 
    echo "$PATH exists"
    
else 
    echo "$PATH does not exists"
    exit 1
fi
# FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +10)

FILES=$(find $PATH -name "*.log" -mtime +10)

# while IFS= read -r line
# do 
#     echo $line
# done <<<$FILES

