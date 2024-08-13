#!/bin/bash

user_id=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

echo "Script started executing at: $TIMESTAMP"



VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2...$R FAILURE $N"
        exit 1
    else
        echo "$2...$G SUCCESS $N"    

    fi
}


user_id=$(id -u)

if [ $user_id -ne 0 ]
then
    echo "Please run as root user::::"
    exit 1
else
    echo "You are super user"
fi

dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "Installation of MySQL"


dnf install git -y &>>$LOG_FILE
VALIDATE $? "Installation of GIT"



