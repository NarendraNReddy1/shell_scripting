#!/bin/bash

USER_ID=$(id -u)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log


if [ $USER_ID -ne 0 ]
then 
    echo "Please be a super user"
    exit 1
else 
    echo "You are super user"
fi



for i in $@
do 
    echo "Installation of $i"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then 
        echo "$i already installed"
        exit 1
    else 
        dnf install $i -y  &>>$LOG_FILE  
    fi
done 
