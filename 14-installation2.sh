#!/bin/bash

USER_ID=$(id -u)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"


if [ $USER_ID -ne 0 ]
then 
    echo "Please be a super user"
    exit 1
else 
    echo "You are super user"
fi

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else 
        echo -e "$2..$G SUCCESS $N"    
    fi    
}



for i in $@
do 
    echo "Installation of $i"
    dnf list installed $i &>>$LOG_FILE
    if [ $? -eq 0 ]
    then 
        echo -e "$i already installed $Y SKIPPING $N"
        
    else 
        dnf install $i -y  &>>$LOG_FILE  
        VALIDATE $? "Installation of $i"
    fi
done 
