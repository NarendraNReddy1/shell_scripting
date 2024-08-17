#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then 
    echo "$SOURCE_DIRECTORY  exists"
    
else 
    echo "$SOURCE_DIRECTORY  does not exists"
    exit 1
fi
# FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +10)

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +10)


while IFS= read -r line
do 
    echo $line
done <<<$FILES

